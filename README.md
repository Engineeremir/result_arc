# result_arc

A new Flutter project.

## Getting Started

Arkadaşlar bu mimaride backend den gelen verilerimizi , yine aynı şekilde
backend den message,success ve data bilgileri ile karşılayarak daha efektif çalışma
yapmış oldum. 

Mimarimiz Temel bir IResult classından türemektedir.Burada success ve message fieldlarımız tutuluyor.
Sonrasında IResult ı implemente eden bir Result sınıfında bu fieldları override edip 
constructor da değerlerini atıyoruz.

Mimaride iki tip result bulunuyor bunlar : 
  -Data döndürmeyen 
  -Data döndüren
  
  olarak ikiye ayrılıyor. Data döndüren sınıflar DataResult adında, Result nesnesini extend eden bir sınıftan extend olurlar.
  
  
  Data döndürmeyen resultlar:
  
  SuccessResult ve ErrorResult olarak ikiye ayrılır. Bu classlar Result sınıfını extend ederler.
  Bu sayede super metodu ile base classın constructor ına,
  SuccessResult için true ve message bilgisi ve aynı şekilde
  ErrorResult için false ve message bilgisi gönderilir.
  
  Data döndüren resultlar:
  SuccessDataResult ve ErrorDataResult olarak ikiye ayrılır.Bu classlar DataResult sınıfını extend ederler.
  
  DataResult sınıfı: Result sınıfını extend eder ek olarak T tipinde data tutar.
  Constructorında super metodu ile base class a success ve message bilgisini set ederken içerde data bilgisini de 
  ek olarak set eder.
  
  SuccessDataResult super metodu ile base class a true,message ve data bilgisini verirken
  ErrorDataResult aynı şekilde base classa false,message ve data bilgisini döner.
  
  Böylelikle gördüğünüz üzere olabildiğince soyutlanmış bir mimari ile servislerimizden gelen
  bilgileri daha iyi analiz edebiliyoruz.



