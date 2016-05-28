run_analysis <- function(directory = getwd()){
    library(dplyr)
    library(reshape2)
    
    #set working directory to input directory where data files are stored
    WD = setwd(directory)
    
    #read in the measurement/column names
    features = read.table(paste(directory, '/features.txt', sep = ''))
    features[,2] = as.character(features[,2])
    
    #create a subset of features that only includes mean and standard dev to
    #be used to subset the test and train data
    mean_std_feats = features[grepl('(mean\\(\\))|(std\\(\\))', features[,2]),1]
    
    #read in activity descriptions and give meaningful variable names
    activities = read.table(paste(directory, '/activity_labels.txt', sep = ''),
                            col.names = c('activity_id', 'activity'))
    
    #merge the test and train data sets
    merged_data = NULL
    for (data_set in c('test', 'train')){
        #create the relevant file names
        file_name = paste('X_', data_set, '.txt', sep = '')
        act_labels_file = paste('y_', data_set, '.txt', sep = '')
        subject_file = paste('subject_', data_set, '.txt', sep = '')
        
        #read in each of the files, including descriptive variable names
        #where needed
        current_data = read.table(paste(directory, '/', data_set, 
                       '/', file_name, sep = ''), col.names = features[,2])
        
        current_act_labels = read.table(paste(directory, '/', data_set, '/', 
                             act_labels_file, sep = ''), col.names = c('activity_id'))
        
        current_subjects = read.table(paste(directory, '/', data_set, '/', 
                           subject_file, sep = ''), col.names = c('subject_id'))
        
        #keep only mean and std features of the test and train data sets
        current_data = current_data[ , mean_std_feats]
        
        #put the measurements together with activity and subject variables
        current_data = cbind(current_data, current_act_labels, current_subjects)
        
        #merge the current merged_data with the newly formed data for test/train
        merged_data = rbind(merged_data, current_data)
    }
    
    #merge the existing data with the activities data frame to create descriptive
    #activity labels rather than ids
    merged_data = merge(x = merged_data, y = activities, by = 'activity_id', all.x = T)
    merged_data$activity_id = NULL
    
    
    #clean up and make more descriptive variable names
    names(merged_data) = tolower(names(merged_data))
    names(merged_data) = sub('^f', 'freqdomain', names(merged_data))
    names(merged_data) = sub('^t', 'timedomain', names(merged_data))
    names(merged_data) = gsub('(\\.)+', '_', names(merged_data))
    names(merged_data) = sub('_$', '', names(merged_data))
    names(merged_data) = sub('std', 'stdev', names(merged_data))
    names(merged_data) = sub('bodybody', 'body', names(merged_data))
   
    #melt and cast the data set to calculate the mean of each measurement
    #for each activity and subject
    agg_data = melt(merged_data, id.vars = c('subject_id', 'activity'))
    agg_data = dcast(agg_data, subject_id + activity ~ variable, mean)
    
    #write out the results
    write.table(agg_data, 'tidy_data.txt', row.names = F)
    
    #set working directory back to original directory
    setwd(WD)
}