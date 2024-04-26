function add_hours_to_datetime
    % 사용자로부터 날짜와 시간 입력 받기
    current_datetime_str = input('현재 날짜와 시간을 yyyy-mm-dd HH:MM:SS 형식으로 입력하세요: ', 's');
    
    % 입력받은 문자열을 datetime 객체로 변환
    current_datetime = datetime(current_datetime_str, 'InputFormat', 'yyyy-MM-dd HH:mm:ss');
    
    % 시간 단위의 숫자 입력 받기
    hours_to_add = input('더할 시간(시간 단위)을 입력하세요: ');
    
    % 입력받은 시간을 현재 날짜와 시간에 더하기
    new_datetime = current_datetime + hours(hours_to_add);
    
    % 결과 출력
    disp(['새 날짜와 시간: ', datestr(new_datetime)]);
end
