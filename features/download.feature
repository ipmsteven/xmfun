Feature: Download
  As a xmfun user
  I can download a mp3 file from xiami.com

  @vcr
  Scenario: Download a single mp3 file
    When I run `xmfun download http://www.xiami.com/song/3378080`
    Then a file named "So What_P!nk.mp3" should exist

  @vcr
  Scenario: Download an album
    When I run `xmfun download http://www.xiami.com/album/5219`
    Then the following files should exist:
      | 一天_许巍.mp3|
      | 平淡_许巍.mp3|
      | 时光_许巍.mp3|
      | 星空_许巍.mp3|
      | 漫步_许巍.mp3|
      | 礼物_许巍.mp3|
      | 蓝莲花_许巍.mp3|
      | 夏日的风_许巍.mp3|
      | 天鹅之旅_许巍.mp3|
      | 完美生活_许巍.mp3|
