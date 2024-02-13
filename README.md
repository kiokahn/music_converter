# Shell Script와 FFMPEG을 이용한 다수 음원 파일 일괄 변환

입력 파릴명과 폴더구조를 유지하여 다수 음원 파일을 일괄 변환 함


## 준비 사항

### FFMPEG 설치
 
Ubuntu Linux
```
sudo apt-get install ffmpeg
```

OSX
```
brew install ffmpeg
```

  

## 실행 조건 및 특징

1. 입력 폴더 full path 입력
2. 출력 폴더 full path 입력
3. 입력 폴더의 *.m4a 파일을 출력 폴더에 320kbps의 *.mp3 파일로 변환
4. 입력 폴더의 파일 및 폴더는 변경 사항이 없을 것
5. 출력 폴더의 폴더 구조는 입력 폴더와 동일 할 것
6. 입력 파일과 출력파일은 파일 이름이 확장자만 다를 것
7. ffmpeg를 활용해 shell script로 작성
8. ffmpeg 버전에 따라 ID3 Tag가 포함되지 않을 수도 있음(최신버전의 ffmpeg사용을 권장함)

  

## 실행 권한 부여
  
```
chmod +x flac_to_alac.sh
chmod +x m4a_to_mp3.sh
chmod +x m4a_to_wav.sh
```

  

## 변환 명령

```
m4a_to_mp3.sh [입력폴더] [출력폴더]
```

입력폴더 : 음원 파일이 있는 위치
출력폴더 : 변환된 파일이 저장 될 위치, 입력 폴더와 동일한 폴더 구조로 저장 됨

  
사용 예시
```
./flac_to_alac.sh ./input ./output
./m4a_to_mp3.sh ./input ./output
./m4a_to_wav.sh ./input ./output
```

Music Sample : https://archive.org/details/lp-00383_BeG