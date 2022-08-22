/* the scheduler will call 'PROC_REMOVE_CUSTOMER' to delete old records from customer and its child table on weekly basis  */


BEGIN DBMS_SCHEDULER.CREATE_JOB
(
job_name => 'WeeklySchedule',
job_type => 'STORED_PROCEDURE'   ,
job_action => 'PROC_REMOVE_CUSTOMER' 
        ,number_of_arguments  => 0                             
        ,start_date           => SYSTIMESTAMP          
--        ,repeat_interval      => 'FREQ=MINUTELY;INTERVAL=2;  BYMINUTE=2,4,6,8,10,12,14,16,18,20, 22, 24, 26,28,30,32,34,36,38,40' 
     ,repeat_interval      =>   'FREQ=WEEKLY; BYDAY=FRI'
        ,end_date             => NULL                          
        ,job_class            => 'DEFAULT_JOB_CLASS'           
        ,enabled              => TRUE                          
                             
        ,comments             => 'my comments'                 
        );
        end;
        /
    


SELECT * FROM USER_SCHEDULER_JOBS;

/*TO MANUALLY CALL THE SCHEDULER*/
begin
dbms_scheduler.run_job (job_name => 'WeeklySchedule');
end;

/*TO DROP THE SCHEDULER*/
BEGIN
DBMS_sCHEDULER.DROP_JOB(job_name => 'EVERYTWOMINS');
END;
/