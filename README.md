# 실행 조건

1. 입력 폴더 full path 입력
2. 출력 폴더 full path 입력
3. 입력 폴더의 *.m4a 파일을 출력 폴더에 320kbps의 *.mp3 파일로 변환
4. 입력 폴더의 파일 및 폴더는 변경 사항이 없을 것
5. 출력 폴더의 폴더 구조는 입력 폴더와 동일 할 것
6. 입력 파일과 출력파일은 이름이 강퇴 확장자만 다를 것
7. ffmpeg를 활용해 shell script로 작성 
8. ffmpeg 버전에 따라 

# 실행 권한 부여
chmod +x m4a_to_mp3.sh
chmod +x cvt_mp3.sh   

# 명령어 예시
 ./m4a_to_mp3.sh ./input ./output
 ./m4a_to_wav.sh ./input ./output
