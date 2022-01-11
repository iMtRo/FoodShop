//
//  RecipeMode.swift
//  FoodShop
//
//  Created by user on 09/01/22.
//

import Foundation
import SwiftUI
 

enum Category: String, CaseIterable, Identifiable {
    var id:String { self.rawValue}
    case mampar = "Mampar"
    case xasip = "Xamir xasip"
    case palov = "Palov"
    case norin = "Norin"
    case qovurdoq = "Qovurdoq"
    case lagmon = "Lag’mon"
    case somsa = "Somsa"
    case dimlama = "Dimlama"
}
struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let desription: String
    let ingredients: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
}

extension Recipe {
    static let all: [Recipe] = [
    Recipe(name: "Mampar",
           image: "https://zira.uz/wp-content/uploads/2019/09/mampar-6.jpg",
           desription: "Mampar — mazali va juda to’yimli suyuq taomlardan biri bo’lib, tayyorlash jarayoni ham umuman qiyinchilik tug’dirmaydi.Bizning usulda tayyorlanilgan mampardan tayyorlab ko’ring va oila a’zolaringizni tansiq ovqat bilan xushnud qiling.",
           ingredients: """
Qadam 1
Tog'orachaga suvni quyamiz. Ustidan tuxumni chaqib solamiz va tuz sepamiz. Sanchiqda ko'pirtirib olamiz. Unni elab solamiz va qattiqroq xamir qorib olamiz. Xamirni 10 daqiqaga tindirib qo'yamiz.

Qadam 2
So'ng xamirni olib, 3 mm yupqalikka kirgunicha yoyib olamiz. Xamirdan 1 sm qalinlikdagi uzun-uzun lentalar kesib chiqamiz. So'ng hammasidan 1x1 sm kattalikdagi to'rtburchaklar kesib chiqamiz.

Qadam 3
Bulyonini pishiramiz:
Go'sht, piyoz, bulg'or qalampiri, sabzi va pomidor(po'stidan tozalangan)ni mayda to'rtburchak qilib to'g'raymiz.

Qadam 4
Qozonga yog'ni quyamiz. Go'shtni solib, qizartirib qovurib olamiz. So'ng piyozni solib, birgalikda yaxshilab qovuramiz.

Qadam 5
So'ng ustidan sabzi, bulg'or qalampiri va pomidorni solamiz. Birgalikda 5 daqiqa qovurgandan keyin ustidan pomidor pastasi, soya qaylasi, to'g'ralgan kashnich, sarimsoq piyoz va achchiq qalampirni solamiz. 5 daqiqacha qovuramiz.

Qadam 6
Suvni quyib, qaynash darajasiga keltiramiz. Past olovda 1 soat davomida pishiramiz.
""",
           category: "Mampar",
           datePublished: "10-01-2022",
           url: "https://zira.uz/uz/recipe/mampar/"),
    
    
    
    Recipe(name: "Xamir xasip",
           image: "https://zira.uz/wp-content/uploads/2019/03/xamir-hosip.jpg",
           desription: "Xamir xasip juda to’yimli va mazali milliy taomlarimizdan biri bo’lib, u o’zining ajoyib ko’rinishi bilan har bir dasturxonga ko’rk beradi.Unga kerakli masalliqlar esa deyarli har bir ro’zg’ordan topiladi.",
           ingredients: """
Qadam 1
Katta tog'oraga unni elab solamiz. Ustidan tuzli suv va o'simlik yog'ini quyib, xamir qorib olamiz. Xamirni yaxshilab mushtlaymiz.Xamirni oziq-ovqat pelyonkasiga yopib, 30 daqiqa xona haroratida qoldiramiz.

Qadam 2
Asosini tayyorlab olamiz:
Guruchni yuvib, qozonchaga solamiz, ustidan suv quyib, 10 daqiqa mobaynida qaynatib olamiz.So'ng to'rli suzgichdan o'tkazamiz.

Qadam 3
Qiymani tog'orachaga solamiz, piyoz va dumba yog'ini mayda to'rtburchak qillib to'g'rab olamiz va go'sht ustidan solamiz.Qaynatilgan guruchni solib, tuz, murch va zira sepamiz.

Qadam 4
Xamirni yupqa, taxminan 1 mm qilib yoyib olamiz.

Qadam 5
So'ng 10x10 sm kattalikdagi bo'laklar kesib chiqamiz.

Qadam 6
Xamir bo'laklarining o'rtasidan 1 osh qoshiqdan qiyma solamiz va xuddi do'lmadek tugamiz. Bunda birinchi oldingi burchagini buklaymiz, so'ng ikkita chetki burchaklarini, keyin esa o'raymiz.

Qadam 7
Mantiqosqonga yog' surtib, xamir xasiplarni terib chiqamiz.

Qadam 8
Qaynayotgan suv ustiga mantiqosqonlarni qo'yamiz va 35-40 daqiqa pishirib olamiz.

Qadam 9
Tovaga yog' solamiz, ustidan parrak qilib to'g'ralgan piyozlarni solamiz va biroz qovurib olamiz. So'ng mayda to'g'ralgan bulg'or qalampiri va pomidorni solib, biroz dimlab pishiramiz.
""",
           category: "Xamir xasip",
           datePublished: "10-01-2022",
           url: "https://zira.uz/uz/recipe/xamir-xasip/"),
    
    
    
    Recipe(name: "Choyxona palov",
           image: "https://zira.uz/wp-content/uploads/2018/10/chaykhanskiy-plov-5.jpg",
           desription: "Choyxona palov eng mazali oshlardan biri bo’lib, aynan shu palobni ko’pchilik o’z uyida tayyorlaydi.Bunda faqat qo’y go’shti va yog’idan foydalanamiz.Choyxona palov eng mazali oshlardan biri bo’lib, aynan shu palobni ko’pchilik o’z uyida tayyorlaydi.",
           ingredients: """
Qadam 1
Qozonga to'g'ralgan dumba yog'inis olib, yaxshilab eritamiz. Faqat jizi qolgandan so'ng esa, qozondan terib olamiz.

Qadam 2
Parrak qilib to'g'ralgan piyozni solib, tillarangga kirgunicha qovuramiz.

Qadam 3
Ustidan o'rtacha kattalikda to'g'ralgan go'sht bo'laklarini solib, qizartirib qovurib olamiz.

Qadam 4
Ustidan somoncha qilib to'g'ralgan sabzini solib, birga qovuramiz. Yarim tayyor bo'lgunicha qovurishda davom etamiz.

Qadam 5
So'ng 800 millilitr suv quyib, ustidan sarimsoqpiyoz va achchiq qalampirni teramiz, qopqpg'ini yopib, 40 daqiqa dimlab qo'yamiz.

Qadam 6
Zirvak tayyor bo'lguncha, guruchni yuvib, tuz solingan iliq suvga ivitib qo'yamiz.

Qadam 7
So'ng ochib, qalampir bilan sarimsoqpiyozni olamiz va tuz bilan zirani sepamiz. Aralashtirib olamiz. Ustidan guruchni solamiz.

Qadam 8
Qopqog'ini 5 daqiqaga yopamiz. So'ng ochib, yana aralashtirib olamiz. Faqat go'shtga tegmaslikka harakat qilamiz.Shu holatni suvi bug'lanib ketgunga qadar takrorlaymiz.

Qadam 9
So'ng guruchini tepalikka o'xshab yig'amiz va ustini yopib, 15-20 daqiqaga dimlab qo'yamiz.

Qadam 10
Oshni tortishdan avval yaxshilab aralashtiramiz va shundan so'ng suzamiz. Qaynatilgan bedana tuxumlari va qazi bo'laklari bilan birga tortamiz. Yoqimli ishtaha!
""",
           category: "Palov",
           datePublished: "10-01-2022",
           url: "https://zira.uz/uz/recipe/choyxona-palov/"),
    
    
    
    Recipe(name: "Norin",
           image: "https://zira.uz/wp-content/uploads/2018/07/norin-1.jpg",
           desription: "Norin o’zbek milliy taomlari orasida eng mazali va sevimlilaridan biri bo’lib, ko’pchilik uni tayyorlash juda murakkab deb o’ylaydi. Lekin aslida unday emas.Norin o’zbek milliy taomlari orasida eng mazali va sevimlilaridan biri bo’lib, ko’pchilik uni tayyorlash juda murakkab deb o’ylaydi. Lekin aslida unday emas.",
           ingredients: """
Qadam 1
Avval qozonga go'sht va suvni solamiz va qaynatamiz. Go’sht kamida 1.5 – 2 soat davomida pishiriladi. So’ng bulyon sovutiladi. Bulyon 3 qismga bo’linadi: 500 ml dan xamir qorilsa, qolganini taomni tortish vaqtida va xamirni qaynatib olishda ishlatamiz.

Qadam 2
Norin xamiridan norin hidi ufurib turishi kerak. Shuning uchun ham norin uchun qaynatilgan go’sht suvini sovutib ishlatish kerak. 500 ml bulyondan qattiqroq xamir qorib olinadi. Norin uchun esa ayni xuddi shunday xamirdan foydalanish kerak.

Qadam 3
Xamirni yarim soatga, iloji bo'lsa bir kechaga tindirib qo'yamiz. So'ng uni olib, 1.5-2 mm qalinlikda yupqa yoyib olamiz. Katta aylana qilib xamir yoyiladi va 10х10 sm hajmdagi to’rtburchaklar kesiladi. Qaynatishdan oldin 50 ml yog’ solinsa, xamirlar bir-biriga yopishmaydi. Xamirlarni qaynatib olamiz va ularni quritamiz. Stolga dasturxon to’shab, ustidan xamirlarni yoyib chiqing va 4-5 daqiqada ular quriydi. So’ng piyoz qovurilgan yog’ni olib xamirlarga surtamiz va xamir bo'laklarini ustma-ust terib chiqamiz. Xamirlar 2-3 soatga tindiriladi. Iloji bo’lsa ularni bir kechaga qoldirish ma’qul. So’ng xamirni yupqa somoncha shaklida to’g’rab olamiz va katta tog'oraga solamiz.

Qadam 4
Go'shtni ham yupqaroq somoncha shaklida to'g'rab, tog'oraga solamiz. Ustidan zira (50gr) va qora murch (7gr) sepamiz. So’ng yana ozroq o’simlik yog’i solamiz. Aralashtiramiz. Taomimiz ham tayyor.

Qadam 5
Likopchalarga teramiz va xohishga qarab ustini to'g'ralgan qazi bo'laklari bilan bezatamiz. Yoqimli ishtaha!
""",
           category: "Norin",
           datePublished: "10-01-2022",
           url: "https://zira.uz/uz/recipe/norin/"),
    
    Recipe(name: "Qovurdoq",
           image: "https://zira.uz/wp-content/uploads/2018/10/kavardak1-2.jpg",
           desription: "Norin o’zbek milliy taomlari orasida eng mazali va sevimlilaridan biri bo’lib, ko’pchilik uni tayyorlash juda murakkab deb o’ylaydi. Lekin aslida unday emas.Bizning maslahatlarga tayanib, siz ham xonimni tez va oson tayyorlay olishingiz mumkin. Norin o’zbek milliy taomlari orasida eng mazali va sevimlilaridan biri bo’lib, ko’pchilik uni tayyorlash juda murakkab deb o’ylaydi. Lekin aslida unday emas.",
           ingredients: """
Qadam 1
Go'shtni uzunchoq shaklda to'g'rab olamiz.

Qadam 2
Piyoz, sabzi va bulg'or qalampirini xohlagan shaklda to'g'raymiz. Sarimsoqpiyozni maydalab olamiz.

Qadam 3
Qozonga yog'ni solib qizdiramiz va go'shtni solib qovurib olamiz.

Qadam 4
Ustidan piyoz va sabzini solib, birga qovurib olamiz. 5-10 daqiqadan so'ng bulg'or qalampiri, sarimsoqpiyoz va lavr yaproqlarini solamiz, tuz va murch sepamiz.

Qadam 5
5-7 daqiqadan so'ng pomudorlarni solamiz va ikkita bo'g'im sabzavotlarni ko'mgunicha suv quyamiz. O'rtacha olovda qopqog'ini yopib, 20 daqiqa dimlab pishiramiz.

Qadam 6
So'ng kartoshjani to'g'rab solamiz va ovqatimizga solamiz. Kartoahka yumshab pishguniga qadar pishirib olamiz.
""",
           category: "Qovurdoq",
           datePublished: "10-01-2022",
           url: "https://zira.uz/uz/recipe/norin/"),
    
    Recipe(name: "Cho’zma lag’mon",
           image: "https://zira.uz/wp-content/uploads/2018/10/lagman-gotovoe-blyudo.jpg",
           desription: "Bugun sizlarga cho’zma lag’monni to’g’ri tayyorlashni o’rgatamiz va shu bilan birga ko’rsatib boramiz.Lag’min xamirini cho’zish ko’pchilik o’ylaganidek mushkul ish emas.Bugun sizlarga cho’zma lag’monni to’g’ri tayyorlashni o’rgatamiz va shu bilan birga ko’rsatib boramiz.Lag’min xamirini cho’zish ko’pchilik o’ylaganidek mushkul ish emas.",
           ingredients: """
Qadam 1
Xamirini tayyorlaymiz
Xamirni qorib olamiz va biroz muddatga ustini yopib, tindiramiz. So'ng xamirni taxta yoki stol ustiga qo'yib, biroz yoyamiz va uzun lentalarga kesib chiqamiz. Kattaroq lagan olib, yaxshilab yog' surtamiz, qo'llarimizni ham yog'lab olamiz.

Qadam 2
Kesilgan xamir bo'laklarnini olib, cho'zamiz va kolbasasimon uzunchoq shakl beramiz. So'ng xamirni qo'lda chapdan o'ngga qaratib burab chiqamiz.

Qadam 3
Uzun xamir bo'lakchalarini spiralsimon qilib, laganga terib chiqamiz va ustini yelim xalta bilan yopib, 15-20 daqiqaga tindirib qo'yamiz.

Qadam 4
So'ng xamirchalarni bir uchidan ushlab cho'zishni boshlaymiz. Undan keyin esa ularni ikkta qo'lda ikki chekkasidan ushlab, stolga ehtiyotkorlik bilan urib chiqamiz. Bunda lag'monlar biroz yupqalashadi.

Qadam 5
Lag'monni tuzli suvga solib, ustiga chiqquniga qadar qaynatib olamiz.

Qadam 6
Qayla
Batcha masalliqlarni o'rtacha kattalikda kesib chiqamiz, sarimsoqpiyozni maydalab olamiz, seldereyning faqat qattiq joyini to'g'raymiz. Go'shtning ustidan soya qaylasini solib, aralashtiramiz va 15 daqiqaga marinadlab qo'yamiz.

Qadam 7
Qozonga yog'ni solib, qizdiramiz va go'shtni solib, 20 daqiqa dimlab pishiramiz.

Qadam 8
So'ng piyozni solib, birga qovuramiz. Ustidan barcha ziravorlani sepamiz.

Qadam 9
Usyidan pekin karamini solib, biroz qovuramiz. Bulg'or qalampirlarini solib, 7 daqiqacha qovuramiz.

Qadam 10
Keyin pomidor pastasini solamiz.

Qadam 11
Yaxshilab qovurilgandan so'ng suv quyamiz va biroz qaynatib pishiramiz. Ustidan to'g'ralgan seldereyni solamiz. So'ng likopchalarga tortib, iste'mol qilamiz. Yoqimli ishtaha!
""",
           category: "Lag’mon",
           datePublished: "10-01-2022",
           url: "https://zira.uz/uz/recipe/cho-zma-lag-mon/"),
    
    Recipe(name: "Ko'k somsa",
           image: "https://zira.uz/wp-content/uploads/2018/03/kuk-samsa-1.jpg",
           desription: "Navro’z bayramini o’zimizning ko’k somsalarimiz tasavvur etib bo’lmaydi. Bugungi somsalarning xamirini tayyorlash esa ko’pchilik uchun yangilik bo’lsa ajab emas!Somsalarni chiroyli chiqishi uchun cho’pchalarda terib chiqsak ham, alohida-alohida tugib chiqsak ham bo’ladi.Navro’z bayramini o’zimizning ko’k somsalarimiz tasavvur etib bo’lmaydi. Bugungi somsalarning xamirini tayyorlash esa ko’pchilik uchun yangilik bo’lsa ajab emas!",
           ingredients: """
Qadam 1
Idishga un, tuxum, tuzli suv solamiz va xamir qoramiz

Qadam 2
Xamirni yaxshilab mushtlaymiz va ustini yopib 30 daqiqaga tindirib qo'yamiz.

Qadam 3
So'ng xamirni olib, kattaroq lagan hajmida yoyib olamiz va o'rtasiga yumshagan sariyog'ni qo'yamiz.Xamirni xuddi konvertga o'xshab yopamiz.Xamirni olib sovutgichga yarim soatga qo'yamiz.

Qadam 4
Xamirni olib, yana yoyamiz, taxminan 30 sm ga va yana konvertga o'xshab buklaymiz. Xamirni olib 3 soatga sovutgichga qo'yamiz.Shu harakatni kamida uch marotaba takrorlaymiz. Xamirni sovutgichga bir kechaga qoldirsangiz, qat-qat bo'lib, chiroyli pishadi.

Qadam 5 Tugallandi
Xamir olib pishirishdan avval, somsa asosini tayyorlab olamiz.Barcha ko'katlarni maydaroq to'g'rab olamiz.Qo'y yog'i va piyozni ham to'rtburchak qilib to'g'raymiz.Hammasini bitta idishga solamiz, ustidan yog'ni quyib ziravorlarni sepamiz va aralashtirib olamiz.

Qadam 6
Xamirni olib ikkiga bo'lamiz va har birini aylana shaklda yoyamiz.

Qadam 7
Yoygan xamirlarimizni ruletga o'xshatib o'rab chiqamiz va taxminan 2 sm qalinlikda kesib chiqamiz.

Qadam 8
Kesgan zuvalachalarimizni yoyib olamiz, yopishib qolmasligi uchun un sepamiz.

Qadam 9
Zuvalachalarga ikki qoshiqdan ko'katli aralashmadan solamiz va aylana shaklda tugib olamiz.

Qadam 10
Somsalar chiroyli chiqishi uchun ularni cho'pchalarga terib chiqamiz.

Qadam 11
Pergament qog'oz to'shalgan patnisga teramiz, ustidan tuxum sarig'i surtib, sedana sepib bezatamiz.

Qadam 12
220 C darajada qizdirilgan gaz pechida 30 daqiqa davomida pishirib olamiz. Yoqimli ishtaha!
""",
           category: "Somsa",
           datePublished: "10-01-2022",
           url: "https://zira.uz/uz/recipe/videoretsept-ko-k-somsa/"),
    
    Recipe(name: "Dimlama",
           image: "https://zira.uz/wp-content/uploads/2018/03/dimlama-3.jpg",
           desription: "Bugun ko’pchilikning sevimli taomlaridan bo’lmish – dimlama taomini tayyorladik. Bu retseptimiz multivarkasi bor pazandalarimizni juda ham xursand qiladi.Chunki bugungi taomimizni multivarkada pishirishga qaror qildik. Sabzavotlarning sharbatiga to’yingan bu taom, biz o’ylaganimizdanda mazaliroq chiqdi. Siz ham tayyorlab ko’ring va baho bering.Bugun ko’pchilikning sevimli taomlaridan bo’lmish – dimlama taomini tayyorladik. Bu retseptimiz multivarkasi bor pazandalarimizni juda ham xursand qiladi.",
           ingredients: """
Qadam 1
Multivarkaga yog'ni solamiz va ustidan halqasimon to'g'ralgan piyozni yarmini terib chiqamiz.

Qadam 2
Go'shtni o'rtacha kattalikdagi bo'lakchalarga bo'lamiz piyoz ustidan terib chiqamiz.

Qadam 3
Go'shtni ustidan qolgan piyozni terib chiqamiz.

Qadam 4
Piyoz ustidan aylana shaklda to'g'ralgan sabzi bo'lakchalarini ham terib chiqamiz.

Qadam 5
So'ng aylana shaklda to'g'ralgan bulg'or qalampiri va pomidorlarni terib chiqamiz.Sarimsoqpiyozni ham butunligicha solamiz.

Qadam 6
Ustidan qovoqchani ham aylana shaklda kesib, terib chiqamiz.Ustidan tuz va murch sepamiz.

Qadam 7
Ustidan bryussel karamini teramiz, to'g'ralgan ko'katlarni solamiz va ustini oddiy karam barglari bilan yopib chiqamiz.

Qadam 8
Multivarka qopqog'ini yopamiz.Yoqamiz, avval "qovurish" tugmasini bosib, 40 daqiqaga qo'yamiz.So'ng "dimlash" tugmasini bosamiz va 90 daqiqa davomida pishiramiz.Taomimiz ham tayyor, suzishimiz mumkin. Issiqligida tanovvul qilamiz. Yoqimli ishtaha!
""",
           category: "Dimlama",
           datePublished: "10-01-2022",
           url: "https://zira.uz/uz/recipe/multivarkada-dimlama-pishirish/"),
    
    
    
    Recipe(name: "Qatlamali somsa",
           image: "https://zira.uz/wp-content/uploads/2018/10/photo_2018-10-03_17-05-51.jpg",
           desription: "Uyda tayyorlanilgan qatlamali somsalardan mazalisi bo’lmasa kerak. Bizlar bugun yana shunday bir qatlamali somsa retseptini taqdim etamiz.Ularni tayyorlash siz o’ylaganchalik qiyin emas.",
           ingredients: """
Qadam 1
Un, suv, tuz va tuxumni solib, o'rtacha yumshoqlikdagi xamir qorib olamiz.

Qadam 2
Tingan xamirni 2-3 mm yupqalikda yoyib olamiz. O'simlik yog'i va margarin aralashmasini eritib, xamirga surtamiz. Xamirni xuddi ruletdek o'raymiz va 15 daqiqaga tindirib qo'yamiz.

Qadam 3
Go'sht, piyoz va dumba yog'ini to'rtburchak qilib to'g'raymiz. Tog'orachaga hammasini solamiz, ziravorlarni solib aralashtiramiz.

Qadam 4
Ruletsimon xamirni bo'laklarga kesib chiqamiz. Har birini yoyib olamiz.

Qadam 5
Ichiga asosdan solib, xuddi rasmdagidek buklaymiz.

Qadam 6
Somsalarni patnisga terib, ustiga tuxumdan surtamiz, sedanadan sepamiz va darajada qizdirilgan gaz pechida tillarangga kirgunicha pishirib olamiz. Yoqimli ishtaha!
""",
           category: "Somsa",
           datePublished: "10.01.2022",
           url: "https://zira.uz/uz/recipe/uyda-tayyorlaniladigan-qatlamali-somsa/"),
    
    
    
    
    Recipe(name: "Varaqi somsa",
           image: "https://upload.wikimedia.org/wikipedia/uz/thumb/f/f1/SOMSA.jpg/640px-SOMSA.jpg",
           desription: "O'zbek pazandaligida varaqi tipidagi somsalar tayorlash texnologiyasiga ko'ra ikki xil bo'ladi: yo'g'da qovuriladi yoki tandirga yopib pishiriladi. Har ikkala xili ham to'y, bayram va aziz mehmon dasturxoniga tayyorlanadigan ma'zar hisoblanadi. To'y ma'zariga va aziz mehmon dastuxoniga atalgan rasmana varaqi somsa bunday tayorlanadi.",
           ingredients: """
Qadam 1
To'y ma'zariga va aziz mehmon dastuxoniga atalgan rasmana varaqi somsa bunday tayorlanadi. Iliq suvga tuz va eritilgan qo'y yogi yoki sariyog' solib qattiqqina xamir qorganingizdan so'ng 10 - 12 minut o'rab qo'yib, tindirib, yana mushtlaysiz.

Qadam 2
Shundan so'ng o'qlov yordamida juda nafis (1 - 2 mm) qilib yoyasiz. Yoymaning yuzasiga yog' surkab, eni 7 - 8 sm keladigan tasmalar kesasiz. Tasmalarni 3 - 4 tasini bir - birini ustiga qo'yib yana eni 7 - 8 sm keladigan qilib kessangiz, 3 - 4 qavatli kvadrat jildlar hosil bo'ladi.

Qadam 3
Jild o'rtasini juva bilan nafisroq qilib yoyasiz, chekkalari esa qat - qatligicha qolaveradi. Shu usulda tayorlangan jildlarga bir choy qoshig'ida qiyma solib uni ikki buklaysiz, chetlariga qo'l tekkizmay qiyma solingan joyi atrofini barmoqlar bilan ezib yopishtirasiz.

Qadam 4
Ana shu somsalarni dog' bo'lib turgan frityur yog'ga solib, qizarguncha qovurasiz, chekkalari xuddi kitobning varaqlariga o'xshab chiroyli chiqadi.

Qadam 5
Qiymasi bunday tayorlanadi: kam yog'roq qo'y (mol) go'shtini qiymalagichdan o'tkazib, juda mayin qilib to'g'ralgan piyoz, murch va tuz qo'shib yaxshilab aralshtirasiz.
""",
           category: "Somsa",
           datePublished: "10.01.2022",
           url: "http://milliytaomlar.narod.ru/index3.html"),
    
    
    
    Recipe(name: "Tandir somsa",
           image: "https://meros.uz/upload/2017/02/2e37d88566aba416e58b6d0979f3c8aa-large.jpg",
           desription: "Somsaning ushbu turi shahar aholisi o'rtasida ancha qadimdan kelib chiqqan bo'lishi kerak. Chunki hvsala bilan bemalolchilikda tayyorlashni taqozo qilishi va tuzilishi ham chiroyli - to'rt shaklda, xo'randaga este'tek zavq beradigan qilib yasalishi kabi omillar bunga ishora qiladi.Tandir varaqi to'y, bayram va katta mehmondorchilik izdahonlarida asosiy ma'zar hisoblanadi.",
           ingredients: """
Qadam 1
Oddiy xamir tayyorlaysiz, o'rab 10 - 12 minut tindirib olgach o'qlov yordamida (1 - 2 mm) qilib yoyasiz.yoymaning yuziga eritilgan mol yog'i surkasangiz, u darhol to'nglaydi.ana shunday yoymani ro'lon qilib o'raysiz, yog' tomoni ichida qoladi.

Qadam 2
Rulondan eni 5 sm keladigan to'garakchalar kesasiz. Har bir to'garakchani barmoq bilan tekislab, juva yordamida 2 - 3 mm keladigan qilib yoysangiz, qatlama jild hosil bo'ladi.Jildlar o'rtasiga 1 osh qoshig'ida qiyma solib xoh yumaloq, xoh uchburchak, xoh to'rtburchak, xoh kvadrat shaklida bo'lgan somsalar tugasiz.

Qadam 3
To'garak yoyma ana shu xil shaklida somsa tugish uchun eng qulay hisoblanadi. Somsalarni tandirga yopib yoki patnisi yog'langan duxovkaga qo'yib pishirasiz. Dasturxonga likopchalarda tortiladi. Ushbu somsani issig'ida ham, soviganda ham emas, ilig'ida iste'mol etish lazzatli bo'ladi.

Qadam 4
Masalliq: xamiri uchun 500 gr oq un, 1 stakan suv, 1 choy qoshig'ida tuz, 50 gr mol yog'I (yoymaga surtish uchun); qiymasi uchun 400 gr go'sht, 50 gr dumba (charvi) yog', 300 gr piyoz, 1 choy qoshig'ida tuz va murch kerak bo'ladi.
""",
           category: "Somsa",
           datePublished: "10.01.2022",
           url: "http://milliytaomlar.narod.ru/index3.html"),
    
    
    Recipe(name: "To'y Polov",
           image: "https://makepedia.uz/wp-content/uploads/2018/09/osh-tayyorlash.jpg",
           desription: "Osh tayyorlash retsepti yuzlab, minglab turlarga ega. Har bir oshpazda ushbu milliy taomni tayyorlashning o’z usuli va oshpazlik sirlari bor. Osh palovning eng taniqli turi — o’zbek oshidir.Osh tayyorlash retsepti yuzlab, minglab turlarga ega. Har bir oshpazda ushbu milliy taomni tayyorlashning o’z usuli va oshpazlik sirlari bor. Osh palovning eng taniqli turi — o’zbek oshidir.Osh tayyorlash retsepti yuzlab, minglab turlarga ega. Har bir oshpazda ushbu milliy taomni tayyorlashning o’z usuli va oshpazlik sirlari bor. Osh palovning eng taniqli turi — o’zbek oshidir.",
           ingredients: """
1-QADAM
Guruch bir necha marta toza suvda yuvib olinadi. So’nggi marta yuvganingizdan qolgan suv to’liq shaffof bo’lishi kerak.

2-QADAM
Go’shtni yuvib, kubik shaklida bo’laklab oling. Piyoz va sabzi po’stidan tozalanadi. 3 ta piyoz ingichka yarimhalqa, sabzini esa uzun 1 sm`lik somoncha qilib kesib olish kerak. Sarimsoq ustki qavat po’stidan tozalanadi, lekin kichik boshchalarga bo’linmaydi.

3-QADAM
Qozon qizdiriladi, moy solinadi va yengil tutaguncha qizdirishda davom etiladi. So’ng qolgan bitta butun piyoz solib, qorayguncha qovuriladi. So’ng olib qo’yiladi.

4-QADAM
Endi oshning zirvagini tayyorlashga kirishiladi. Qozonga piyoz solib, u tillarang tusga kirguncha qovuriladi (taxminan 7 daqiqa). Piyoz qovurilib bo’lgach, qozonga piyoz ustidan go’sht solinadi va u qobiq hosil qilgunicha qovuriladi.

5-QADAM
Ushbu bosqichda sabzi solinadi va aralashtirmasdan 3 daqiqa qovuriladi. So’ng barchasi 10 daqiqa vaqti-vaqti bilan aralashtirib turgan holda qovuriladi.

6-QADAM
Zira va kashnich urug’lari ezilib, osh zirvagiga qo’shiladi. Ushbu bosqichda zirvakning tuzi rostlanadi.

7-QADAM
Olov o’rtacha balandlikkacha pasaytiriladi va sabzi yumshoq bo’lmagunicha zirvakni pishirishda davom etiladi (yana taxminan 7-10 daqiqa). So’ng zirvakdan 2 sm baland bo’lguncha qaynoq suv solib, ikkita achchiq qalampir solinadi va olov yanada pasaytirilib, 30 daqiqaga dimlab qo’yiladi.

8-QADAM
Osh pishirish usullari
Guruch yana bir marta yuviladi, suvi to’kib tashlanadi. Keyin zirvak ustidan bir tekis qilib yoyib chiqiladi. Olov maksimumgacha baland qilinib, guruch ustidan 3 sm baland bo’lguncha kapkirni ustidan qilib qaynoq suv solinadi.

9-QADAM
Guruch suvni shimib olgach, unga sarimsoq botirib qo’yiladi, olov o’rtacha balandlikkacha pasaytiriladi va guruch tayyor bo’lguncha pishiriladi.

10-QADAM
Osh tayyorlash usullari haqida
Guruchga kapkir bilan yengil urib ko’riladi. Agar bunda chiqadigan ovoz jarangdor bo’lmasa, guruchda tayoqcha yordamida qozon tubigacha bo’lgan chuqurchalar hosil qilinadi.

11-QADAM
Guruch tekislanadi, qozonning qopqog’i yopiladi, olov yanada pastroq qilinadi va osh 30 daqiqaga damlab qo’yiladi. Palov tayyor! Uni bedanda tuxumlari, limon, achchiq qalampir bilan bezatish mumkin.
""",
           category: "Palov",
           datePublished: "10.01.2022",
           url: "https://makepedia.uz/food/osh-tayyorlash-retsepti/"),
    
    
    Recipe(name: "Norin",
           image: "https://makepedia.uz/wp-content/uploads/2018/08/norin-tayyorlash.jpg",
           desription: "Norin bu somoncha qilib kesilgan go’sht va maxsus xamir, piyoz, murch aralashmasi va xushbo’y bulyon bilan tortiladigan juda mazali taomdir. Uni tayyorlash uchun an’anaviy tarzda qo’y yoki ot go’shtidan tayyorlangan bulyon va ishlatilishi shart bo’lgan masalliq — qazidan foydalaniladi.",
           ingredients: """
1-QADAM
Suyaklarni idishga soling va ustidan 3-4 litr sovuq suv quying. Qaynashgacha olib boring, so’ng olovni minimal darajagacha pasaytiring va kuchli bulyon olish uchun 3-4 soat davomida qaynating. Bulyonga tuz va murchni eng oxirida qo’shing, so’ng uni suzib oling. Go’shtni suyaklardan ajratib oling.

2-QADAM
Norin xamiri uchun idishga unni elab soling, 200 ml sovuq ichimlik suvida tuzni eriting. Suvga bitta tuxum chaqib solib, bir xil bo’lgunga qadar aralashtiring. Aralashmani un solingan idishga quying va xamir qoring. Xamirni zuvala qiling, ustini yopib, 1-2 soat tindirishga qo’ying.

3-QADAM
Xamirni yupqa qilib yoying va 4-5 sm enlikdagi kesmalarga kesing.

4-QADAM
Oldindan tayyorlangan bulyonni xamirni qaynatib pishirish uchun idishga soling. Qaynaguncha olib boring, tuzlang. Xamirli kesmalarni bulyonda 3-4 daqiqa qaynating, so’ng bulyondan chiqarib oling, biroz o’simlik moyi qo’shib, aralashtiring.

5-QADAM
Pishgan xamirning 4-5 tasini ustma-ust qo’ib, ingichka somoncha qilib kesing. Bulyonga ketgan go’shtni ham shunday somoncha qilib to’g’rang. Qazi ham shu tarzda to’g’raladi, biroq 3-4 ta doiracha qazini bezatish uchun olib qo’ying.

6-QADAM
Go’sht va kolbasali somonchalarning bir qismini xamirli somonchalar va murch bilan aralashtiring. To’g’ralgan qazining bir qismini tayyor norinni bezatish uchun oilib qo’ying.

7-QADAM
Piyozni yupqa yarimhalqa shaklida to’g’rang, unga to’g’ralgan ko’katlar va murch qo’shib, aralashtiring.

8-QADAM
Xamir, go’sht va qazili aralashmani yassi tarelkaga do’ngcha qilib qo’ying. Ustidan olib qo’yilgan qazi va piyoz-ko’kat aralashmasini qo’ying. Kosaga yarim qilib to’ldirib bulyon soling va portisya bilan dasturxonga torting. Norinni alohida, bulyonni alohida tanovul qilish ham, tarelkadagi norinni bulyonga solib, aralashtirib, birgalikda tanovul qilish ham mumkin.
""",
           category: "Norin",
           datePublished: "10.01.2022",
           url: "https://makepedia.uz/food/norin-tayyorlash/"),
    
    
    
    
    ]
}
