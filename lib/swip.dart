import 'package:flutter/material.dart';
import 'package:shalom/internal.dart';
class BalladSong extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.black38,
     appBar: AppBar(
       title: Text('Ballad'),
         backgroundColor: Colors.blueGrey,
     ),
     body: SafeArea(
         child: SingleChildScrollView(
           child: Container(
             color: Colors.black87,
             child: Column(
               children: <Widget>[
                 InternalState().Screen(context,88, 'ወዳጄ እየሱስ አው አው አው'),

               ],
             ),
           ),
         )),
   );
  }

}
class ChikaSong extends StatefulWidget{

  @override
  _ChikaSong createState()=>_ChikaSong();

}
class _ChikaSong extends State<ChikaSong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        title: Text('Chickchika'),
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.black87,
              child: Column(
                children: <Widget>[
              InternalState().Screen(context,9,'ወዳጅ ነው ጌታ የማይከዳ'),
              InternalState().Screen(context,13,'ዋስትናዬ እየሱስ ጠበቃዬ እየሱስ'),
              InternalState().Screen(context,19,'ያንን ዘመን አለፍኩኝ ባንተ ብርታት'),
              InternalState().Screen(context,20,'አንተ እኮ ጌታዬ ልዩ ነህ'),
              InternalState().Screen(context,21,'አንተ ተራራ ተራራ ሜዳ ትሆናለህ'),
              InternalState().Screen(context,28,'ያ ጎልያድ መዉደቁ አይቀርም'),
              InternalState().Screen(context,39, 'ደሉ ዋሎኔ'),
              InternalState().Screen(context,43, 'ልክ ነህ ልክ ነህ አንተ ትክክል ነህ'),
                  InternalState().Screen(context,51, 'አቤት መገኖ'),
              InternalState().Screen(context,53, 'አምላካችን መጠጊያችን ሀይላችን'),
              InternalState().Screen(context,66, 'አግዘኝ ጌታዬ'),
              InternalState().Screen(context,69, 'ደሉ ዋሎኔ'),
              InternalState().Screen(context,84, 'ምስጋናዬ'),
              InternalState().Screen(context,89, 'ወድሃለሁ ብዬ እኔስ ልቤ አይረካም'),
                  InternalState().Screen(context,15, 'ተባረክልኝ ተመስገንልኝ'),
                  InternalState().Screen(context,16, 'ለነፍሴ የደረሰ ማንም በሌለበት'),

                ],
              ),
            ),
          )),
    );
  }

}
class DiscoSong extends StatefulWidget{

  @override
  _DiscoSong createState()=>_DiscoSong();

}
class _DiscoSong extends State<DiscoSong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Disco'),
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.black87,
              child: Column(
                children: <Widget>[
                  InternalState().Screen(context,7,'እኔማ ሳስበው ወደ ኃላ'),
                  InternalState().Screen(context,17,'ቢከፋኝ ቢደላኝ ያንተን ስራ'),
                  InternalState().Screen(context,25,'አንተ ታናሽ እስራኤል ሆይ አትፍራ'),
                  InternalState().Screen(context,59, 'አቅሜ ጉልበቴ ጋሻ ከለላዬ'),
                  InternalState().Screen(context,60, 'እየሩሳሌም'),
                  InternalState().Screen(context,93, 'ክብሬ ሞገሴ ነህ ጌታዬ'),
                  InternalState().Screen(context,109, 'እኔ ክበር ባልልህም ላንተ ክብር አያንስህም'),
                  InternalState().Screen(context,113, 'ድንቅ ነው አሰራርህ'),
                  InternalState().Screen(context,118, 'የመኖሬ ትርጉም የህይወቴ ዋልታ'),

                ],
              ),
            ),
          )),
    );
  }

}
class ReggaeSong extends StatefulWidget{

  @override
  _ReggaeSong createState()=>_ReggaeSong();

}
class _ReggaeSong extends State<ReggaeSong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Reggae'),
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.black87,
              child: Column(
                children: <Widget>[
              InternalState().Screen(context,4,'እግዚ⁄ር ጠራኝ ከብዙዎች መሃል መረጠኝ'),
              InternalState().Screen(context,11,'ከፍ ካልከው በላይ ከፍ በል'),
              InternalState().Screen(context,15,'ቃል አለኝ ና  ለምን እሰጋለው'),
              InternalState().Screen(context,22,'አመልክሃለው ውዱ ኢየሱሴ'),
              InternalState().Screen(context,30,'ኢየሱስ ጌታዬ'),
              InternalState().Screen(context,35, 'ዘመን በዘመን ሲተካ'),
              InternalState().Screen(context,41, 'ምስጋና ና ክብር ላምጣ ለጌታዬ'),
              InternalState().Screen(context,42, 'ስጠራው የሚሰማኝ'),
                  InternalState().Screen(context,48, 'ምንድነው ሚያሰጋን ምንድነው'),
                  InternalState().Screen(context,49, 'ይችላል እየሱስ ማንሳት የሞተውን'),
              InternalState().Screen(context,55, 'ልባርከው ይህንን አምላክ'),
              InternalState().Screen(context,58, 'ያልናከኝ  የተሸከምከኝ'),
              InternalState().Screen(context,63, 'መዘመሬ ላንተ ክብር'),
              InternalState().Screen(context,86, 'በዘመኔ ልከተልህ አንተ ብቻ'),
              InternalState().Screen(context,95, 'ተደላድዬ'),
              InternalState().Screen(context,99, 'ኢ ቢዛ ኢ ቂሺጣንቾ'),
              InternalState().Screen(context,111, 'የምድር ዳርቻዎችን በአንዴ ትቃኛለህ'),
              InternalState().Screen(context,116, 'መልሰኝ መልሰኝ አባት ሆይ መልሰኝ'),
              InternalState().Screen(context,119, 'ሀይልን በሚሰጠኝ በክርስቶስ ሁሉን እችላለሁ'),
                  InternalState().Screen(context,20, 'ኤልሻዳይ ኤልሻዳይ'),
                  InternalState().Screen(context,21, 'ኢየሱሴ ና ና ዝለቅ ከበቴ'),
                  InternalState().Screen(context,22, 'ፍቅርህ ያስደስታል ህይወት ይለወጣል'),

                ],
              ),
            ),
          )),
    );
  }

}
class WaltzSong extends StatefulWidget{

  @override
  _WaltzSong createState()=>_WaltzSong();

}
class _WaltzSong extends State<WaltzSong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Waltz'),
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.black87,
              child: Column(
                children: <Widget>[
              InternalState().Screen(context,1,'አምላኬ ጌታዬ ስራህ ግሩም ነው',),
              InternalState().Screen(context,2,'ዓለም ስጋ ሰይጣን ከግራ ና ከ ቀኝ'),
              InternalState().Screen(context,3,'በጠላት ወትመድ እንዳልገባ'),
              InternalState().Screen(context,12,'ቀን እያለ በሩ ሳይዘጋ'),
              InternalState().Screen(context,14,'እንዴት እንደረዳኝ እኔ ነኝ ማውቀው'),
              InternalState().Screen(context,24,'እግዚ/ር ሆይ ፀሎቴን ስማኝ'),
              InternalState().Screen(context,26,'እኔ ምመኘዉ አንድ ነገር'),
              InternalState().Screen(context,29,'ፀጋህ ምህረትህ ያግዘኝ ጌታዬ'),
              InternalState().Screen(context,33, 'አንድ አርገን ጌታ ሆይ መለያየት ቀርቶ'),
              InternalState().Screen(context,34, 'ማራናታ ማራናታ'),
              InternalState().Screen(context,36, 'ጌታን ተስፋ አድርጎ የታመነ እርሱ ይድናል'),
              InternalState().Screen(context,40, 'ጌታ ሆይ ምህረትህን ተጠምቼ'),
              InternalState().Screen(context,44, 'ሀጢአት በበዛበት በዚ ክፉ ዘመን'),
              InternalState().Screen(context,45, 'ዝም አልልም እመሰክራለው'),
                  InternalState().Screen(context,47, 'ኧረ እንዴት ላውራው የጌታዬን ፍቅር'),
              InternalState().Screen(context,100, 'በቀረው ዘመኔ'),
              InternalState().Screen(context,101, 'ለካ አመጼ ነው'),
              InternalState().Screen(context,103, 'በላይ በሰማይ በታች በምድር'),
              InternalState().Screen(context,104, 'ላንግስህ ብዬ ብዘምር በአንደበቴ ቃል'),
              InternalState().Screen(context,107, 'ጌታ ሆይ እንዳትተወኝ '),
              InternalState().Screen(context,108, 'ከክብር ዙፋኑ መውረዱ ሳያንሰው'),
              InternalState().Screen(context,112, 'ኢየሱስዬን እወደዋለሁ'),
              InternalState().Screen(context,115, 'የተቃጠለው  በጎልጎታ'),
                  InternalState().Screen(context,24, 'አቤቱ የልመናዬን ቃል'),
                  InternalState().Screen(context,25, 'ኢየሱስዬን እወደዋለሁ'),

                ],
              ),
            ),
          )),
    );
  }

}
class WolloSong extends StatefulWidget{

  @override
  _WolloSong createState()=>_WolloSong();

}
class _WolloSong extends State<WolloSong> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wollo  & S.rock'),
        backgroundColor: Colors.blueGrey,
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              color: Colors.black87,
              child: Column(
                children: <Widget>[
              InternalState().Screen(context,5,'ጌታ ሆይ መልሰን አባት ሆይ መልሰን'),
              InternalState().Screen(context,8,'አሁንም አሁንም ጌታዬን እላለሁ'),
              InternalState().Screen(context,10,'አያሰኘኝም የግብፅ ሽንኩርት'),
              InternalState().Screen(context,16,'ሻሎም ሻሎም ሻሎም ሻሎም'),
              InternalState().Screen(context,23,'ጌታ ሆይ የሱስ ሆይ ማስተዋልን ስጠኝ'),
              InternalState().Screen(context,27,'ሰዉ ሆይ በእግዚ/ር ታመን'),
              InternalState().Screen(context,31, 'አቤት ክርስትና አወይ ክርስትና'),
              InternalState().Screen(context,32, 'ኃይሉ ትልቅ ነዉ የጌታዬ'),
                  InternalState().Screen(context,50, 'ቀን ሳለ ሳይጨላልም'),
              InternalState().Screen(context,54, 'ሚስጥረኛዬ ነህ የጭንቄ ተጋሪ'),
              InternalState().Screen(context,82, 'ታሪኬን የለወጥከው አንተው ነህ'),
              InternalState().Screen(context,90, 'በምስጋና ፊትህ እንቀርባለን'),
              InternalState().Screen(context,91, 'በህይወት መኖሬ ደሙ ነው ለኔ'),
              InternalState().Screen(context,114, 'ከሁሉም ቀድማችሁ የእግዚአብሄርን ፅድቅ'),
              InternalState().Screen(context,117, 'እኔን አትተወኝ'),
                ],
              ),
            ),
          )),
    );
  }

}