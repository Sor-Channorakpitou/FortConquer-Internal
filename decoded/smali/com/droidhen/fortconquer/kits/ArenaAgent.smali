.class public Lcom/droidhen/fortconquer/kits/ArenaAgent;
.super Ljava/lang/Object;
.source "ArenaAgent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidhen/fortconquer/kits/ArenaAgent$NetworkService;
    }
.end annotation


# static fields
.field public static final ARENA_PREFIX:Ljava/lang/String; = "matchBattlePlayer"

.field public static final INSTANCE:Lcom/droidhen/fortconquer/kits/ArenaAgent;

.field public static final REPORT_URL:Ljava/lang/String; = "http://fortconquer.droidhen.com/FortConquer/game/Main.php"

.field private static final SUCCESS:I

.field private static bUploadTestData:Z

.field static final fakeNames:[Ljava/lang/String;


# instance fields
.field private final transient pool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 41
    sput-boolean v2, Lcom/droidhen/fortconquer/kits/ArenaAgent;->bUploadTestData:Z

    .line 43
    new-instance v0, Lcom/droidhen/fortconquer/kits/ArenaAgent;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/kits/ArenaAgent;-><init>()V

    sput-object v0, Lcom/droidhen/fortconquer/kits/ArenaAgent;->INSTANCE:Lcom/droidhen/fortconquer/kits/ArenaAgent;

    .line 132
    const/16 v0, 0x3de

    new-array v0, v0, [Ljava/lang/String;

    .line 133
    const-string v1, "Starry**"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "trtrtr"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "doaa"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "WhiteBoy96"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Yellow Bird"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "China city"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Amigani"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Nimohi"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "mymy **"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "will fairall"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u8001\u7eaa"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "LUI:-)"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "500"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Kohana"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "fiona s"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "ann\u2665\u2665"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "KawaiI pumpkin"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "Kelly Lee"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "nagura"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "samuel josh"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "skilletnc"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "CPD"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "MIMI\u2606"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "thyago"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "TE13SIS"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "assurance"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "andryNOAME"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "Rivermoon"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "Noma09"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "sileina"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "Drakon76"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "Mustard"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "sanma-daisuki"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "WINDCHARMER 2"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "chen.."

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "Nok.Patcha"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "\u6e2f\u5f0f\u76ae\u86cb"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "fyit"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "ShanBlair"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "Sean5578"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "bluewings"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "Ugly Nana"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "minhui"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "ALMENDROTA"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "fajar punya"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "radhiyuusa"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "Haixx"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "Lunner"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "Taylorandme"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "Amos85"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "thebabyflaca"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "Chris.jp"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "Shade of Grey."

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "Dieguito77"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "milany"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "NAME lala"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "immad"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "Raylene"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Helder"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "thibaud"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "crystal151"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "\u82f9"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "Namra23"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "hihi^_^"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string v2, "Antik\u00f6rper"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string v2, "Micah Rocks"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "AshiGun"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "Irishflower"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "\u6c34\u74f6\u661f\u7a7a_tw"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "U\uff5eG"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "Thygo"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "Jojo2"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "jiaxing"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "sara bara"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "\u0633\u0639\u0648\u062f\u064a\u0629"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "viv\'en"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "Donna_Q8"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "jarla84"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "kingkilla"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "Kiki_tchyou"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "monolevi"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "\u6d77\u7dbf\u5bf6\u5bf6"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string v2, "Ruthg"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string v2, "NightWing"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string v2, "withim"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string v2, "Shadow Spawn"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string v2, "Sir bizy"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string v2, "KillEmAll"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string v2, "PETI1995"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string v2, "Blackest Panther"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string v2, "techingo"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "TonytheTiger77"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "Kitty ll"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "squelly"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "sofie-maniez"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "\u6db5~"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "Nicole159"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string v2, "\u6b32"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "Anexsin"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string v2, "Katielyn42"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "bloo"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string v2, "\u0646\u0648\u0631)\u061b"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "coco nut"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string v2, "Z1D3N"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string v2, "Krisis"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "Maddman"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "KKayD"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "\u0623\u0633\u064a\u0631\u0647..\u0644\u0643"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "Redluna"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "lee eun a"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "Tine 2012"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "F.T. Island"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "Enit"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "scorpio 29"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "cmvaugh"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "ace 67"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string v2, "Longhuntre"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string v2, "gastrocnemius"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string v2, "Styer"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "\uff61.*\u3082\u3082*.\uff61"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "Lita6"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "Layla123"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string v2, "jj Lee"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "KhoiNguyen"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "devilheart"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "Yvz"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string v2, "Agata B."

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "Traffic Jam"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "lengputhea"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "*Mandy"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "brunilein"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string v2, "bbangeun"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "Rafhanah"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "DeN.mx"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "Feynman"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "sabijac"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "Pokedeira"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "BeeNeeZ"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "Sereno"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "\u5927\u5b9d\u8d1d\u513f"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "vampire bill"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "Fredmink"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "hotop"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "brow62615651"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "Lakaena"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "Lacromera"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "Aulia irfni"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "bluefairy"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "\u307f\u3043o0"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "Sikk"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "Aetheltryth"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "DarkLightx"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string v2, ":-)24"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "Spira"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "toad-yop"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "samradini"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "tbridge"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "Livvy Rose"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "PiNoY1972"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "ahmad55555"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "RaditZ"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string v2, "Pen101"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string v2, "love v"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string v2, "erf@n"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string v2, "Whipblah"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "HER0"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "borock"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "bee@-69eee"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string v2, "pehien"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "Tung*"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "ABU ALI77"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "Billy Pasadena"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "TLAA"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "Huven"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "Maiden Angie"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "gellibeenz"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "swim"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "Nady75"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "emir2000"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "gec3"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "metalgreymon"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "LuckyChoe"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "Mr. Nice Guy"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "Inbar land"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "Mistress Malia"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "oODuBCePTiCoNOo"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "Beautiful Sun"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "Tom\u00e1s 2011"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "rorory"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "Ice Lady"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "Amanda**"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "NONA\ud0dc\uc774ME"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "Foxyhyt"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "Maja M"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "Fede-R"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "sandra123"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "\u05e2\u05d9\u05dc\u05d9"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "D. June"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "Auntie62"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "Henk V"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "\u9f99\u5973"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "jmkil"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "Odd Notion"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "\u0428\u043f\u0438\u043a\u0430\u0447\u0438\u043a"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "SPENCER9"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "Saarah Jabeen"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "TAOISTCHAN"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "AL\u0130"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "Judy  baby"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "Ciyz\u0131s K\u0131rayst"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "Plauen/Sachsen"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "joo123"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "Simeon"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "Lillyfee18"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "MSA"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "\u0423\u03c5\u043a\u041e\u266a \u2462"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "lkjhmnbv"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "stepmother"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "Eilaaf"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "yiseungmin"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "Kennony"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "issacpang"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "HM\u2665SJ"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "knuffi666"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "GoBig"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "Jacqui69"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "pink devil"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "Sudees"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "Momay farm"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "QUEEN}}{{NICOLE"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "oom9338"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "tethys rich"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "Princess Claudia"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "mayor talley"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "PINARR"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "\u9a8f\u5934"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "Crankies"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "bongbong1030"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "Naalik"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "crazylady"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "RuKas"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "linnkarin"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "\ud30c\ub780\ud558\ub2982"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "Anneliesse"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "Arclite"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "Aces Acres"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "PARATROOPER"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "CTI"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "small mom"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string v2, "GARDEN0426"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "Knight/Dragon"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string v2, "\ud558\uc9c0\ub9c8~~!!"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "JEFANNARULZ"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "stuk"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "fuunnee girl"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string v2, "MJO"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v2, "Jaspeak"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "ANYWAY"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "SasaLin"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "NOmjt"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v2, "Sweetpea32"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "Naruto !"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string v2, "serra moia"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string v2, "Janujutt"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string v2, "mamalun"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string v2, "Kaci4372"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "we love th"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "Johnene"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "Nanna =>"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "s2pooh"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "Philip1"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "Qhme"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "Mr Trung"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string v2, "\u4f73\u5948(KANA)"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v2, "puni\u2606"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "claire patricia"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "mininas"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "hubbyhoney"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "Joan\'s World"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "Lisaloriene"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v2, "\u5931\u53bb"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "afcdon"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string v2, "Korea"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v2, "liventolaugh"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string v2, "Gumby480"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string v2, "\u6167\u5152"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string v2, "Rina Ramdani"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string v2, "11:11(@&3)"

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const-string v2, "\u0623\u0631\u064a\u062c\u0627\u0646"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string v2, "Prince of tears"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const-string v2, "jepz"

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const-string v2, "ISHAQ 007"

    aput-object v2, v0, v1

    const/16 v1, 0x126

    const-string v2, "Hisenberg"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string v2, "Dragon girl 13"

    aput-object v2, v0, v1

    const/16 v1, 0x128

    const-string v2, "SUNNYMARIA"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const-string v2, "Ghyssa"

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const-string v2, "Annie~\u2665"

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    const-string v2, "jacobol"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    const-string v2, "ptt"

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    const-string v2, "Flowers DJ"

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    const-string v2, "dmstepl"

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    const-string v2, "wheefus"

    aput-object v2, v0, v1

    const/16 v1, 0x130

    const-string v2, "miminim"

    aput-object v2, v0, v1

    const/16 v1, 0x131

    const-string v2, "puyya"

    aput-object v2, v0, v1

    const/16 v1, 0x132

    const-string v2, "\u6c92\u6709\u6068"

    aput-object v2, v0, v1

    const/16 v1, 0x133

    const-string v2, "drakonianmark"

    aput-object v2, v0, v1

    const/16 v1, 0x134

    const-string v2, "Deng Jianlian"

    aput-object v2, v0, v1

    const/16 v1, 0x135

    const-string v2, "Jin Afraid"

    aput-object v2, v0, v1

    const/16 v1, 0x136

    const-string v2, "sky88"

    aput-object v2, v0, v1

    const/16 v1, 0x137

    const-string v2, "Mya Mia"

    aput-object v2, v0, v1

    const/16 v1, 0x138

    const-string v2, "Agatha\'s world"

    aput-object v2, v0, v1

    const/16 v1, 0x139

    const-string v2, "wj\u2122"

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    const-string v2, "Rose Red"

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const-string v2, "cheeni"

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    const-string v2, "Butterscottch"

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    const-string v2, "Uncle Dan"

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    const-string v2, "junekey"

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    const-string v2, "bahar :)"

    aput-object v2, v0, v1

    const/16 v1, 0x140

    const-string v2, "\u0628\u0646\u064a \u0648\u0627\u064a\u0644"

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const-string v2, "Jean Christabel"

    aput-object v2, v0, v1

    const/16 v1, 0x142

    const-string v2, "Darth Thorne"

    aput-object v2, v0, v1

    const/16 v1, 0x143

    const-string v2, "Laura85"

    aput-object v2, v0, v1

    const/16 v1, 0x144

    const-string v2, "Mjpatr"

    aput-object v2, v0, v1

    const/16 v1, 0x145

    const-string v2, "stacirickman3"

    aput-object v2, v0, v1

    const/16 v1, 0x146

    const-string v2, "samiyo85"

    aput-object v2, v0, v1

    const/16 v1, 0x147

    const-string v2, "Wild Rose 69"

    aput-object v2, v0, v1

    const/16 v1, 0x148

    const-string v2, "Samcleokaty"

    aput-object v2, v0, v1

    const/16 v1, 0x149

    const-string v2, "Bellamari"

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    const-string v2, "Devilken"

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    const-string v2, "nn730"

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    const-string v2, "APARKER"

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    const-string v2, "xxxguy"

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    const-string v2, "\u9ed1\u7ffc\u4e4b\u4e3b"

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    const-string v2, "\u78a7\u9cf3"

    aput-object v2, v0, v1

    const/16 v1, 0x150

    const-string v2, "paulappp"

    aput-object v2, v0, v1

    const/16 v1, 0x151

    const-string v2, "moon  silver"

    aput-object v2, v0, v1

    const/16 v1, 0x152

    const-string v2, "\u5b9b\u5982\u6211\u5fc3"

    aput-object v2, v0, v1

    const/16 v1, 0x153

    const-string v2, "trung1186"

    aput-object v2, v0, v1

    const/16 v1, 0x154

    const-string v2, "benny1381"

    aput-object v2, v0, v1

    const/16 v1, 0x155

    const-string v2, "Ashish Desai"

    aput-object v2, v0, v1

    const/16 v1, 0x156

    const-string v2, "gec2"

    aput-object v2, v0, v1

    const/16 v1, 0x157

    .line 134
    const-string v2, "King Maximus"

    aput-object v2, v0, v1

    const/16 v1, 0x158

    const-string v2, "Snowyvilla"

    aput-object v2, v0, v1

    const/16 v1, 0x159

    const-string v2, "Discospider"

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    const-string v2, "ahmad idris"

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    const-string v2, "Akuseku"

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    const-string v2, "SnukkeCamilla"

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    const-string v2, "ERICA1004"

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    const-string v2, "EmmaAlice"

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    const-string v2, "Flauriane"

    aput-object v2, v0, v1

    const/16 v1, 0x160

    const-string v2, "Exist Trace"

    aput-object v2, v0, v1

    const/16 v1, 0x161

    const-string v2, "Fred23"

    aput-object v2, v0, v1

    const/16 v1, 0x162

    const-string v2, "George F"

    aput-object v2, v0, v1

    const/16 v1, 0x163

    const-string v2, "HADMIZERNY"

    aput-object v2, v0, v1

    const/16 v1, 0x164

    const-string v2, "\u8b0e\u8089"

    aput-object v2, v0, v1

    const/16 v1, 0x165

    const-string v2, "Lento"

    aput-object v2, v0, v1

    const/16 v1, 0x166

    const-string v2, "Baburla"

    aput-object v2, v0, v1

    const/16 v1, 0x167

    const-string v2, "kimi_one"

    aput-object v2, v0, v1

    const/16 v1, 0x168

    const-string v2, "Kaitaya"

    aput-object v2, v0, v1

    const/16 v1, 0x169

    const-string v2, "sachikohaueru"

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    const-string v2, "Pixie.."

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    const-string v2, "Arietty:*"

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    const-string v2, "Zushi"

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    const-string v2, "HL\u2661"

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    const-string v2, "choice2109"

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    const-string v2, "@B@S"

    aput-object v2, v0, v1

    const/16 v1, 0x170

    const-string v2, "marcoci"

    aput-object v2, v0, v1

    const/16 v1, 0x171

    const-string v2, "Musalski"

    aput-object v2, v0, v1

    const/16 v1, 0x172

    const-string v2, "Mnbb"

    aput-object v2, v0, v1

    const/16 v1, 0x173

    const-string v2, "lovuless"

    aput-object v2, v0, v1

    const/16 v1, 0x174

    const-string v2, "minnie mama"

    aput-object v2, v0, v1

    const/16 v1, 0x175

    const-string v2, "Nyy"

    aput-object v2, v0, v1

    const/16 v1, 0x176

    const-string v2, "sus\u0131"

    aput-object v2, v0, v1

    const/16 v1, 0x177

    const-string v2, "yusufum"

    aput-object v2, v0, v1

    const/16 v1, 0x178

    const-string v2, "Shimente"

    aput-object v2, v0, v1

    const/16 v1, 0x179

    const-string v2, "\u010cMehta82 - LV69"

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    const-string v2, "\u0645\u0632\u0627\u064a\u0646"

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    const-string v2, "Mickes"

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    const-string v2, "ienazee"

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    const-string v2, "Isy(;"

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    const-string v2, "hellsing zero"

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    const-string v2, "LADYSS"

    aput-object v2, v0, v1

    const/16 v1, 0x180

    const-string v2, "robindho"

    aput-object v2, v0, v1

    const/16 v1, 0x181

    const-string v2, "droid expert"

    aput-object v2, v0, v1

    const/16 v1, 0x182

    const-string v2, "3Sarahs"

    aput-object v2, v0, v1

    const/16 v1, 0x183

    const-string v2, "GrettysMom"

    aput-object v2, v0, v1

    const/16 v1, 0x184

    const-string v2, "Tarvala"

    aput-object v2, v0, v1

    const/16 v1, 0x185

    const-string v2, "Kalilea"

    aput-object v2, v0, v1

    const/16 v1, 0x186

    const-string v2, "topolanxia"

    aput-object v2, v0, v1

    const/16 v1, 0x187

    const-string v2, "Ncitytwo"

    aput-object v2, v0, v1

    const/16 v1, 0x188

    const-string v2, "bluesubmarin"

    aput-object v2, v0, v1

    const/16 v1, 0x189

    const-string v2, "nayzufar"

    aput-object v2, v0, v1

    const/16 v1, 0x18a

    const-string v2, "Hero hero"

    aput-object v2, v0, v1

    const/16 v1, 0x18b

    const-string v2, "laaroussi"

    aput-object v2, v0, v1

    const/16 v1, 0x18c

    const-string v2, "dbjjjang"

    aput-object v2, v0, v1

    const/16 v1, 0x18d

    const-string v2, "N\'love"

    aput-object v2, v0, v1

    const/16 v1, 0x18e

    const-string v2, "replay."

    aput-object v2, v0, v1

    const/16 v1, 0x18f

    const-string v2, "Charlies Land"

    aput-object v2, v0, v1

    const/16 v1, 0x190

    const-string v2, "Endyhuy"

    aput-object v2, v0, v1

    const/16 v1, 0x191

    const-string v2, "mocha lee"

    aput-object v2, v0, v1

    const/16 v1, 0x192

    const-string v2, "mari1004"

    aput-object v2, v0, v1

    const/16 v1, 0x193

    const-string v2, "EMPEROR  CJ"

    aput-object v2, v0, v1

    const/16 v1, 0x194

    const-string v2, "974"

    aput-object v2, v0, v1

    const/16 v1, 0x195

    const-string v2, "winnie \u03c0_\u03c0"

    aput-object v2, v0, v1

    const/16 v1, 0x196

    const-string v2, "Doooooooooooooon"

    aput-object v2, v0, v1

    const/16 v1, 0x197

    const-string v2, "dadada"

    aput-object v2, v0, v1

    const/16 v1, 0x198

    const-string v2, "snicks"

    aput-object v2, v0, v1

    const/16 v1, 0x199

    const-string v2, "ma_to"

    aput-object v2, v0, v1

    const/16 v1, 0x19a

    const-string v2, "Elis. M."

    aput-object v2, v0, v1

    const/16 v1, 0x19b

    const-string v2, "Bailboy"

    aput-object v2, v0, v1

    const/16 v1, 0x19c

    const-string v2, "\u900d\u9065\u5a03\u5a03\u9c7c"

    aput-object v2, v0, v1

    const/16 v1, 0x19d

    const-string v2, "C-Bus"

    aput-object v2, v0, v1

    const/16 v1, 0x19e

    const-string v2, "Elving"

    aput-object v2, v0, v1

    const/16 v1, 0x19f

    const-string v2, "LeBron   James"

    aput-object v2, v0, v1

    const/16 v1, 0x1a0

    const-string v2, "sashka_marcih"

    aput-object v2, v0, v1

    const/16 v1, 0x1a1

    const-string v2, "\u2665DAMI\u2665"

    aput-object v2, v0, v1

    const/16 v1, 0x1a2

    const-string v2, "yoyiz"

    aput-object v2, v0, v1

    const/16 v1, 0x1a3

    const-string v2, "poseidon918"

    aput-object v2, v0, v1

    const/16 v1, 0x1a4

    const-string v2, "\u5339\u5179\u5821"

    aput-object v2, v0, v1

    const/16 v1, 0x1a5

    const-string v2, "baz21"

    aput-object v2, v0, v1

    const/16 v1, 0x1a6

    const-string v2, "molly99"

    aput-object v2, v0, v1

    const/16 v1, 0x1a7

    const-string v2, "Kosha"

    aput-object v2, v0, v1

    const/16 v1, 0x1a8

    const-string v2, "fo  yentafo"

    aput-object v2, v0, v1

    const/16 v1, 0x1a9

    const-string v2, "Jejedelaplaya"

    aput-object v2, v0, v1

    const/16 v1, 0x1aa

    const-string v2, "Ms Shy Fox"

    aput-object v2, v0, v1

    const/16 v1, 0x1ab

    const-string v2, "alize808"

    aput-object v2, v0, v1

    const/16 v1, 0x1ac

    const-string v2, "nunut"

    aput-object v2, v0, v1

    const/16 v1, 0x1ad

    const-string v2, "TreeGirls"

    aput-object v2, v0, v1

    const/16 v1, 0x1ae

    const-string v2, "maya9178"

    aput-object v2, v0, v1

    const/16 v1, 0x1af

    const-string v2, "\uc3e0\ub791~\u2665"

    aput-object v2, v0, v1

    const/16 v1, 0x1b0

    const-string v2, "paofisi"

    aput-object v2, v0, v1

    const/16 v1, 0x1b1

    const-string v2, "0ha"

    aput-object v2, v0, v1

    const/16 v1, 0x1b2

    const-string v2, "SilentLady"

    aput-object v2, v0, v1

    const/16 v1, 0x1b3

    const-string v2, "quarters"

    aput-object v2, v0, v1

    const/16 v1, 0x1b4

    const-string v2, "black33"

    aput-object v2, v0, v1

    const/16 v1, 0x1b5

    const-string v2, "Ben12"

    aput-object v2, v0, v1

    const/16 v1, 0x1b6

    const-string v2, "Woolymammoth"

    aput-object v2, v0, v1

    const/16 v1, 0x1b7

    const-string v2, "jpb5013"

    aput-object v2, v0, v1

    const/16 v1, 0x1b8

    const-string v2, "Stewie713"

    aput-object v2, v0, v1

    const/16 v1, 0x1b9

    const-string v2, "Ayana"

    aput-object v2, v0, v1

    const/16 v1, 0x1ba

    const-string v2, "\u03b1\u03c5\u03b3\u03b7"

    aput-object v2, v0, v1

    const/16 v1, 0x1bb

    const-string v2, "\u9032\u5316"

    aput-object v2, v0, v1

    const/16 v1, 0x1bc

    const-string v2, "Fionaa<3"

    aput-object v2, v0, v1

    const/16 v1, 0x1bd

    const-string v2, "Zexi\u00f3n"

    aput-object v2, v0, v1

    const/16 v1, 0x1be

    const-string v2, "sassa87"

    aput-object v2, v0, v1

    const/16 v1, 0x1bf

    const-string v2, "Boo2000"

    aput-object v2, v0, v1

    const/16 v1, 0x1c0

    const-string v2, "\u0627\u0628\u0648\u0648\u0633\u0646"

    aput-object v2, v0, v1

    const/16 v1, 0x1c1

    const-string v2, "LULyetLION"

    aput-object v2, v0, v1

    const/16 v1, 0x1c2

    const-string v2, "Double G"

    aput-object v2, v0, v1

    const/16 v1, 0x1c3

    const-string v2, "siobhan992"

    aput-object v2, v0, v1

    const/16 v1, 0x1c4

    const-string v2, "M & F"

    aput-object v2, v0, v1

    const/16 v1, 0x1c5

    const-string v2, "aharon"

    aput-object v2, v0, v1

    const/16 v1, 0x1c6

    const-string v2, "Florin vasile"

    aput-object v2, v0, v1

    const/16 v1, 0x1c7

    const-string v2, "\u8fdc\u5904\u82ac\u82b3"

    aput-object v2, v0, v1

    const/16 v1, 0x1c8

    const-string v2, "\u5532"

    aput-object v2, v0, v1

    const/16 v1, 0x1c9

    const-string v2, "\u00bb\u00bbZ\u20acZO\u00ab\u00ab"

    aput-object v2, v0, v1

    const/16 v1, 0x1ca

    const-string v2, "awil"

    aput-object v2, v0, v1

    const/16 v1, 0x1cb

    const-string v2, "perkinsgirl"

    aput-object v2, v0, v1

    const/16 v1, 0x1cc

    const-string v2, "vishal1981"

    aput-object v2, v0, v1

    const/16 v1, 0x1cd

    const-string v2, "Kaco2"

    aput-object v2, v0, v1

    const/16 v1, 0x1ce

    const-string v2, "kiumi"

    aput-object v2, v0, v1

    const/16 v1, 0x1cf

    const-string v2, "rickace alder"

    aput-object v2, v0, v1

    const/16 v1, 0x1d0

    const-string v2, "qiang"

    aput-object v2, v0, v1

    const/16 v1, 0x1d1

    const-string v2, "SayOw"

    aput-object v2, v0, v1

    const/16 v1, 0x1d2

    const-string v2, "\u60f3\u53d8\u5438\u8840\u9b3c"

    aput-object v2, v0, v1

    const/16 v1, 0x1d3

    const-string v2, "Zeytor"

    aput-object v2, v0, v1

    const/16 v1, 0x1d4

    const-string v2, "Rahulz@INA"

    aput-object v2, v0, v1

    const/16 v1, 0x1d5

    const-string v2, "Takayuki0522"

    aput-object v2, v0, v1

    const/16 v1, 0x1d6

    const-string v2, "azzir"

    aput-object v2, v0, v1

    const/16 v1, 0x1d7

    const-string v2, "paalun"

    aput-object v2, v0, v1

    const/16 v1, 0x1d8

    const-string v2, "geordie"

    aput-object v2, v0, v1

    const/16 v1, 0x1d9

    const-string v2, "faisal fahad"

    aput-object v2, v0, v1

    const/16 v1, 0x1da

    const-string v2, ":Dana"

    aput-object v2, v0, v1

    const/16 v1, 0x1db

    const-string v2, "Vovsja"

    aput-object v2, v0, v1

    const/16 v1, 0x1dc

    const-string v2, "king war"

    aput-object v2, v0, v1

    const/16 v1, 0x1dd

    const-string v2, "jared23"

    aput-object v2, v0, v1

    const/16 v1, 0x1de

    const-string v2, "joey   \u84c1"

    aput-object v2, v0, v1

    const/16 v1, 0x1df

    const-string v2, "yuwawa ling"

    aput-object v2, v0, v1

    const/16 v1, 0x1e0

    const-string v2, "ErnestoMetal"

    aput-object v2, v0, v1

    const/16 v1, 0x1e1

    const-string v2, "Porl85"

    aput-object v2, v0, v1

    const/16 v1, 0x1e2

    const-string v2, "vincente poopoo"

    aput-object v2, v0, v1

    const/16 v1, 0x1e3

    const-string v2, "sakooo"

    aput-object v2, v0, v1

    const/16 v1, 0x1e4

    const-string v2, "mollim"

    aput-object v2, v0, v1

    const/16 v1, 0x1e5

    const-string v2, "NERA"

    aput-object v2, v0, v1

    const/16 v1, 0x1e6

    const-string v2, "Stoney Crook"

    aput-object v2, v0, v1

    const/16 v1, 0x1e7

    const-string v2, "cristylmt"

    aput-object v2, v0, v1

    const/16 v1, 0x1e8

    const-string v2, "musim"

    aput-object v2, v0, v1

    const/16 v1, 0x1e9

    const-string v2, "monicasto"

    aput-object v2, v0, v1

    const/16 v1, 0x1ea

    const-string v2, "Rehan Kashif"

    aput-object v2, v0, v1

    const/16 v1, 0x1eb

    const-string v2, "Alstroemeria"

    aput-object v2, v0, v1

    const/16 v1, 0x1ec

    const-string v2, "Angelyse"

    aput-object v2, v0, v1

    const/16 v1, 0x1ed

    const-string v2, "arbinbaba"

    aput-object v2, v0, v1

    const/16 v1, 0x1ee

    const-string v2, "VERSILORD"

    aput-object v2, v0, v1

    const/16 v1, 0x1ef

    const-string v2, "Matt01"

    aput-object v2, v0, v1

    const/16 v1, 0x1f0

    const-string v2, "agarwal"

    aput-object v2, v0, v1

    const/16 v1, 0x1f1

    const-string v2, "\u76ae\u8afe\u5361@@"

    aput-object v2, v0, v1

    const/16 v1, 0x1f2

    const-string v2, "taira"

    aput-object v2, v0, v1

    const/16 v1, 0x1f3

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x1f4

    const-string v2, "Hoai"

    aput-object v2, v0, v1

    const/16 v1, 0x1f5

    const-string v2, "Shinobisan"

    aput-object v2, v0, v1

    const/16 v1, 0x1f6

    const-string v2, "Chris Chronister"

    aput-object v2, v0, v1

    const/16 v1, 0x1f7

    const-string v2, "timhat"

    aput-object v2, v0, v1

    const/16 v1, 0x1f8

    const-string v2, "hecpa"

    aput-object v2, v0, v1

    const/16 v1, 0x1f9

    const-string v2, "Erickson renee"

    aput-object v2, v0, v1

    const/16 v1, 0x1fa

    const-string v2, "China.goddess"

    aput-object v2, v0, v1

    const/16 v1, 0x1fb

    const-string v2, "sunhee8044"

    aput-object v2, v0, v1

    const/16 v1, 0x1fc

    const-string v2, "mihyo09"

    aput-object v2, v0, v1

    const/16 v1, 0x1fd

    const-string v2, "\u6d0b\u683c\u683c"

    aput-object v2, v0, v1

    const/16 v1, 0x1fe

    const-string v2, ".R.A."

    aput-object v2, v0, v1

    const/16 v1, 0x1ff

    const-string v2, "Veritas ."

    aput-object v2, v0, v1

    const/16 v1, 0x200

    const-string v2, "Dadade"

    aput-object v2, v0, v1

    const/16 v1, 0x201

    const-string v2, "serz101"

    aput-object v2, v0, v1

    const/16 v1, 0x202

    const-string v2, "Snake787"

    aput-object v2, v0, v1

    const/16 v1, 0x203

    const-string v2, "bsweet7599"

    aput-object v2, v0, v1

    const/16 v1, 0x204

    const-string v2, "maida"

    aput-object v2, v0, v1

    const/16 v1, 0x205

    const-string v2, "Kayla92"

    aput-object v2, v0, v1

    const/16 v1, 0x206

    const-string v2, "\u5929\u671d\u7684\u574f\u86cb"

    aput-object v2, v0, v1

    const/16 v1, 0x207

    const-string v2, "beng;-)"

    aput-object v2, v0, v1

    const/16 v1, 0x208

    const-string v2, "bobbles"

    aput-object v2, v0, v1

    const/16 v1, 0x209

    const-string v2, "Filipek"

    aput-object v2, v0, v1

    const/16 v1, 0x20a

    const-string v2, "Stawberry"

    aput-object v2, v0, v1

    const/16 v1, 0x20b

    const-string v2, "Yamata"

    aput-object v2, v0, v1

    const/16 v1, 0x20c

    const-string v2, "Seanthedon"

    aput-object v2, v0, v1

    const/16 v1, 0x20d

    const-string v2, "Awen"

    aput-object v2, v0, v1

    const/16 v1, 0x20e

    const-string v2, "anni huang"

    aput-object v2, v0, v1

    const/16 v1, 0x20f

    const-string v2, "93"

    aput-object v2, v0, v1

    const/16 v1, 0x210

    const-string v2, "Forchinato"

    aput-object v2, v0, v1

    const/16 v1, 0x211

    const-string v2, "Airin\uc5d0\uc774\ub9b0"

    aput-object v2, v0, v1

    const/16 v1, 0x212

    const-string v2, "jffl"

    aput-object v2, v0, v1

    const/16 v1, 0x213

    const-string v2, "\ud0a4\ubd042"

    aput-object v2, v0, v1

    const/16 v1, 0x214

    const-string v2, "Sylwia6666"

    aput-object v2, v0, v1

    const/16 v1, 0x215

    const-string v2, "SIN11"

    aput-object v2, v0, v1

    const/16 v1, 0x216

    const-string v2, "cocozi ara"

    aput-object v2, v0, v1

    const/16 v1, 0x217

    const-string v2, "pap37"

    aput-object v2, v0, v1

    const/16 v1, 0x218

    const-string v2, "AIMY2007"

    aput-object v2, v0, v1

    const/16 v1, 0x219

    const-string v2, "jonson city"

    aput-object v2, v0, v1

    const/16 v1, 0x21a

    const-string v2, "keonh"

    aput-object v2, v0, v1

    const/16 v1, 0x21b

    const-string v2, "\u9673\u5168\u51f1"

    aput-object v2, v0, v1

    const/16 v1, 0x21c

    const-string v2, "Wing Cheng"

    aput-object v2, v0, v1

    const/16 v1, 0x21d

    const-string v2, "jenwoodz"

    aput-object v2, v0, v1

    const/16 v1, 0x21e

    const-string v2, "\u60e0\u7ee2\tMalaysia"

    aput-object v2, v0, v1

    const/16 v1, 0x21f

    const-string v2, "aigle"

    aput-object v2, v0, v1

    const/16 v1, 0x220

    const-string v2, "toinetoine25"

    aput-object v2, v0, v1

    const/16 v1, 0x221

    const-string v2, "HANAlove"

    aput-object v2, v0, v1

    const/16 v1, 0x222

    const-string v2, "hardeep mori"

    aput-object v2, v0, v1

    const/16 v1, 0x223

    const-string v2, "kay!a"

    aput-object v2, v0, v1

    const/16 v1, 0x224

    const-string v2, "goeast"

    aput-object v2, v0, v1

    const/16 v1, 0x225

    const-string v2, "Baby Puu"

    aput-object v2, v0, v1

    const/16 v1, 0x226

    const-string v2, "\u043b\u0435\u0440\u0430\u043b\u0435\u0440\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0x227

    const-string v2, "Nuctemeron"

    aput-object v2, v0, v1

    const/16 v1, 0x228

    const-string v2, "Dust585"

    aput-object v2, v0, v1

    const/16 v1, 0x229

    const-string v2, "Hannah99"

    aput-object v2, v0, v1

    const/16 v1, 0x22a

    const-string v2, "kank"

    aput-object v2, v0, v1

    const/16 v1, 0x22b

    const-string v2, "SalCrow26"

    aput-object v2, v0, v1

    const/16 v1, 0x22c

    const-string v2, "jentrish"

    aput-object v2, v0, v1

    const/16 v1, 0x22d

    const-string v2, "abc123"

    aput-object v2, v0, v1

    const/16 v1, 0x22e

    const-string v2, "daniana"

    aput-object v2, v0, v1

    const/16 v1, 0x22f

    const-string v2, "Name\u2665Euro\'12"

    aput-object v2, v0, v1

    const/16 v1, 0x230

    const-string v2, "juhwa"

    aput-object v2, v0, v1

    const/16 v1, 0x231

    const-string v2, "Luscious 37"

    aput-object v2, v0, v1

    const/16 v1, 0x232

    const-string v2, "Tony6369"

    aput-object v2, v0, v1

    const/16 v1, 0x233

    const-string v2, "\u4e09\u5c0f"

    aput-object v2, v0, v1

    const/16 v1, 0x234

    const-string v2, "kellyferrell"

    aput-object v2, v0, v1

    const/16 v1, 0x235

    const-string v2, "\uc2dc\uc2dcHoon"

    aput-object v2, v0, v1

    const/16 v1, 0x236

    const-string v2, "Wilso"

    aput-object v2, v0, v1

    const/16 v1, 0x237

    const-string v2, "\u73840207"

    aput-object v2, v0, v1

    const/16 v1, 0x238

    const-string v2, "xuri\u00b0\u2022\u00b0"

    aput-object v2, v0, v1

    const/16 v1, 0x239

    const-string v2, "almeera_cute"

    aput-object v2, v0, v1

    const/16 v1, 0x23a

    const-string v2, "Anna T."

    aput-object v2, v0, v1

    const/16 v1, 0x23b

    const-string v2, "Pannika<3"

    aput-object v2, v0, v1

    const/16 v1, 0x23c

    const-string v2, "Maria Fulton"

    aput-object v2, v0, v1

    const/16 v1, 0x23d

    const-string v2, "\u6cab\u5b9d"

    aput-object v2, v0, v1

    const/16 v1, 0x23e

    const-string v2, "VELIKIII"

    aput-object v2, v0, v1

    const/16 v1, 0x23f

    const-string v2, "puti"

    aput-object v2, v0, v1

    const/16 v1, 0x240

    const-string v2, "\uc368\ub2c8\u2665-\u2665"

    aput-object v2, v0, v1

    const/16 v1, 0x241

    const-string v2, "Valcrist"

    aput-object v2, v0, v1

    const/16 v1, 0x242

    const-string v2, "Siwwen"

    aput-object v2, v0, v1

    const/16 v1, 0x243

    const-string v2, "barbie girl 123"

    aput-object v2, v0, v1

    const/16 v1, 0x244

    const-string v2, "KrazednKonfused"

    aput-object v2, v0, v1

    const/16 v1, 0x245

    const-string v2, "\"solo"

    aput-object v2, v0, v1

    const/16 v1, 0x246

    const-string v2, "jeanshortes"

    aput-object v2, v0, v1

    const/16 v1, 0x247

    const-string v2, "Doucette"

    aput-object v2, v0, v1

    const/16 v1, 0x248

    const-string v2, "mewa"

    aput-object v2, v0, v1

    const/16 v1, 0x249

    const-string v2, "Phil N. Mybols"

    aput-object v2, v0, v1

    const/16 v1, 0x24a

    const-string v2, "Kaohotz"

    aput-object v2, v0, v1

    const/16 v1, 0x24b

    const-string v2, "B_boy junior 2.4"

    aput-object v2, v0, v1

    const/16 v1, 0x24c

    const-string v2, "Dewaynebig"

    aput-object v2, v0, v1

    const/16 v1, 0x24d

    const-string v2, "Flockus"

    aput-object v2, v0, v1

    const/16 v1, 0x24e

    const-string v2, "Lady Jade"

    aput-object v2, v0, v1

    const/16 v1, 0x24f

    const-string v2, "kendra_23"

    aput-object v2, v0, v1

    const/16 v1, 0x250

    const-string v2, "arzu"

    aput-object v2, v0, v1

    const/16 v1, 0x251

    const-string v2, "YH \u2665 HW"

    aput-object v2, v0, v1

    const/16 v1, 0x252

    const-string v2, "dorisg"

    aput-object v2, v0, v1

    const/16 v1, 0x253

    const-string v2, "\u597d\u4eba\u5148\u751f"

    aput-object v2, v0, v1

    const/16 v1, 0x254

    const-string v2, "vemula"

    aput-object v2, v0, v1

    const/16 v1, 0x255

    const-string v2, "habibka"

    aput-object v2, v0, v1

    const/16 v1, 0x256

    const-string v2, "drealock"

    aput-object v2, v0, v1

    const/16 v1, 0x257

    const-string v2, "\u4e8c\u903c\u722a\u722a"

    aput-object v2, v0, v1

    const/16 v1, 0x258

    const-string v2, "binilbongzi"

    aput-object v2, v0, v1

    const/16 v1, 0x259

    const-string v2, "QCSD"

    aput-object v2, v0, v1

    const/16 v1, 0x25a

    const-string v2, "JoeyBlaze"

    aput-object v2, v0, v1

    const/16 v1, 0x25b

    const-string v2, "~\u798e\u798e\uff5ePink"

    aput-object v2, v0, v1

    const/16 v1, 0x25c

    const-string v2, "SamGT"

    aput-object v2, v0, v1

    const/16 v1, 0x25d

    const-string v2, "Andrew  atx"

    aput-object v2, v0, v1

    const/16 v1, 0x25e

    const-string v2, "Lady LUNA\uffe5"

    aput-object v2, v0, v1

    const/16 v1, 0x25f

    const-string v2, "Tracey_A"

    aput-object v2, v0, v1

    const/16 v1, 0x260

    const-string v2, "JMX"

    aput-object v2, v0, v1

    const/16 v1, 0x261

    const-string v2, "ELBASHA"

    aput-object v2, v0, v1

    const/16 v1, 0x262

    const-string v2, "Honey Dulhani"

    aput-object v2, v0, v1

    const/16 v1, 0x263

    const-string v2, "red face"

    aput-object v2, v0, v1

    const/16 v1, 0x264

    const-string v2, "N o0osa"

    aput-object v2, v0, v1

    const/16 v1, 0x265

    const-string v2, "Mystical"

    aput-object v2, v0, v1

    const/16 v1, 0x266

    const-string v2, "\u7cca\u5857\u5854\u514b"

    aput-object v2, v0, v1

    const/16 v1, 0x267

    const-string v2, "knubbi"

    aput-object v2, v0, v1

    const/16 v1, 0x268

    const-string v2, "Zoe Elizabeth"

    aput-object v2, v0, v1

    const/16 v1, 0x269

    const-string v2, "CCL"

    aput-object v2, v0, v1

    const/16 v1, 0x26a

    const-string v2, "fairy cutie"

    aput-object v2, v0, v1

    const/16 v1, 0x26b

    const-string v2, "JUN316"

    aput-object v2, v0, v1

    const/16 v1, 0x26c

    const-string v2, "samiya"

    aput-object v2, v0, v1

    const/16 v1, 0x26d

    const-string v2, "KADEEFI"

    aput-object v2, v0, v1

    const/16 v1, 0x26e

    const-string v2, "djaak"

    aput-object v2, v0, v1

    const/16 v1, 0x26f

    const-string v2, "\u7ea4\u5c18"

    aput-object v2, v0, v1

    const/16 v1, 0x270

    const-string v2, "paul8675"

    aput-object v2, v0, v1

    const/16 v1, 0x271

    const-string v2, "tycoyee"

    aput-object v2, v0, v1

    const/16 v1, 0x272

    const-string v2, "\u307fmiho\u307b"

    aput-object v2, v0, v1

    const/16 v1, 0x273

    const-string v2, "stolly"

    aput-object v2, v0, v1

    const/16 v1, 0x274

    const-string v2, "Deathly"

    aput-object v2, v0, v1

    const/16 v1, 0x275

    const-string v2, "Aprilassassin"

    aput-object v2, v0, v1

    const/16 v1, 0x276

    const-string v2, "peyton"

    aput-object v2, v0, v1

    const/16 v1, 0x277

    const-string v2, "DK1"

    aput-object v2, v0, v1

    const/16 v1, 0x278

    const-string v2, "PETER T\u00c8O"

    aput-object v2, v0, v1

    const/16 v1, 0x279

    const-string v2, "hong^^"

    aput-object v2, v0, v1

    const/16 v1, 0x27a

    const-string v2, "\u8a0e\u53ad\u5566\u6b7b\u76f8"

    aput-object v2, v0, v1

    const/16 v1, 0x27b

    const-string v2, "\ubbf8\uc9c0\ub2c8~~"

    aput-object v2, v0, v1

    const/16 v1, 0x27c

    const-string v2, "siwoo78"

    aput-object v2, v0, v1

    const/16 v1, 0x27d

    const-string v2, "D\'s Islands"

    aput-object v2, v0, v1

    const/16 v1, 0x27e

    const-string v2, "CuteEmo ^_^"

    aput-object v2, v0, v1

    const/16 v1, 0x27f

    const-string v2, "Chenguinho"

    aput-object v2, v0, v1

    const/16 v1, 0x280

    const-string v2, "Trynh"

    aput-object v2, v0, v1

    const/16 v1, 0x281

    const-string v2, "\u5c0f\u8349"

    aput-object v2, v0, v1

    const/16 v1, 0x282

    const-string v2, "Kurre"

    aput-object v2, v0, v1

    const/16 v1, 0x283

    const-string v2, "crissy1164"

    aput-object v2, v0, v1

    const/16 v1, 0x284

    const-string v2, "jushy jushy"

    aput-object v2, v0, v1

    const/16 v1, 0x285

    const-string v2, "Garfieldhung"

    aput-object v2, v0, v1

    const/16 v1, 0x286

    const-string v2, "danlovescourt"

    aput-object v2, v0, v1

    const/16 v1, 0x287

    const-string v2, "Kr\"g\u00fbney"

    aput-object v2, v0, v1

    const/16 v1, 0x288

    const-string v2, "Nek0"

    aput-object v2, v0, v1

    const/16 v1, 0x289

    const-string v2, "LuvShaggin"

    aput-object v2, v0, v1

    const/16 v1, 0x28a

    const-string v2, "Darle"

    aput-object v2, v0, v1

    const/16 v1, 0x28b

    const-string v2, "FaZza"

    aput-object v2, v0, v1

    const/16 v1, 0x28c

    const-string v2, "zamantha"

    aput-object v2, v0, v1

    const/16 v1, 0x28d

    const-string v2, "hassan\u062d\u0633\u0646"

    aput-object v2, v0, v1

    const/16 v1, 0x28e

    const-string v2, "agnesaa"

    aput-object v2, v0, v1

    const/16 v1, 0x28f

    const-string v2, "Tiffany_1987"

    aput-object v2, v0, v1

    const/16 v1, 0x290

    const-string v2, "innovator"

    aput-object v2, v0, v1

    const/16 v1, 0x291

    const-string v2, "little Bagie"

    aput-object v2, v0, v1

    const/16 v1, 0x292

    const-string v2, "2929"

    aput-object v2, v0, v1

    const/16 v1, 0x293

    const-string v2, "Princess terri"

    aput-object v2, v0, v1

    const/16 v1, 0x294

    const-string v2, "Princess Red"

    aput-object v2, v0, v1

    const/16 v1, 0x295

    const-string v2, "Sweet\u2661U"

    aput-object v2, v0, v1

    const/16 v1, 0x296

    const-string v2, "\u0422\u0430\u043d\u044f1"

    aput-object v2, v0, v1

    const/16 v1, 0x297

    const-string v2, "FABYS"

    aput-object v2, v0, v1

    const/16 v1, 0x298

    const-string v2, "roquel"

    aput-object v2, v0, v1

    const/16 v1, 0x299

    const-string v2, "romanson"

    aput-object v2, v0, v1

    const/16 v1, 0x29a

    const-string v2, "LongLegsLanore"

    aput-object v2, v0, v1

    const/16 v1, 0x29b

    const-string v2, "chinbert68"

    aput-object v2, v0, v1

    const/16 v1, 0x29c

    const-string v2, "Pietrr"

    aput-object v2, v0, v1

    const/16 v1, 0x29d

    const-string v2, "Leah 466"

    aput-object v2, v0, v1

    const/16 v1, 0x29e

    const-string v2, "sunshine j"

    aput-object v2, v0, v1

    const/16 v1, 0x29f

    const-string v2, "annual"

    aput-object v2, v0, v1

    const/16 v1, 0x2a0

    const-string v2, "PopeInnocentXIV"

    aput-object v2, v0, v1

    const/16 v1, 0x2a1

    const-string v2, "COG"

    aput-object v2, v0, v1

    const/16 v1, 0x2a2

    const-string v2, "Pr Guy"

    aput-object v2, v0, v1

    const/16 v1, 0x2a3

    const-string v2, "Osnil"

    aput-object v2, v0, v1

    const/16 v1, 0x2a4

    const-string v2, "IRON MAN 69"

    aput-object v2, v0, v1

    const/16 v1, 0x2a5

    const-string v2, "Jaicy"

    aput-object v2, v0, v1

    const/16 v1, 0x2a6

    const-string v2, "Finee"

    aput-object v2, v0, v1

    const/16 v1, 0x2a7

    const-string v2, "isrie"

    aput-object v2, v0, v1

    const/16 v1, 0x2a8

    const-string v2, "asdzxcf"

    aput-object v2, v0, v1

    const/16 v1, 0x2a9

    const-string v2, "wcy"

    aput-object v2, v0, v1

    const/16 v1, 0x2aa

    const-string v2, "Solomka"

    aput-object v2, v0, v1

    const/16 v1, 0x2ab

    const-string v2, "Yado"

    aput-object v2, v0, v1

    const/16 v1, 0x2ac

    const-string v2, "suziibabii2"

    aput-object v2, v0, v1

    const/16 v1, 0x2ad

    const-string v2, "eeeom"

    aput-object v2, v0, v1

    const/16 v1, 0x2ae

    const-string v2, "SHRUTI 09"

    aput-object v2, v0, v1

    const/16 v1, 0x2af

    const-string v2, "Tsai chun-lai"

    aput-object v2, v0, v1

    const/16 v1, 0x2b0

    const-string v2, "RACRIS"

    aput-object v2, v0, v1

    const/16 v1, 0x2b1

    .line 135
    const-string v2, "mzx"

    aput-object v2, v0, v1

    const/16 v1, 0x2b2

    const-string v2, "Marykely"

    aput-object v2, v0, v1

    const/16 v1, 0x2b3

    const-string v2, "Shork"

    aput-object v2, v0, v1

    const/16 v1, 0x2b4

    const-string v2, "Sweetcandyme"

    aput-object v2, v0, v1

    const/16 v1, 0x2b5

    const-string v2, "HL Nien"

    aput-object v2, v0, v1

    const/16 v1, 0x2b6

    const-string v2, "lbrahim"

    aput-object v2, v0, v1

    const/16 v1, 0x2b7

    const-string v2, "tairq ksa"

    aput-object v2, v0, v1

    const/16 v1, 0x2b8

    const-string v2, "Mischief"

    aput-object v2, v0, v1

    const/16 v1, 0x2b9

    const-string v2, "\uff32umi"

    aput-object v2, v0, v1

    const/16 v1, 0x2ba

    const-string v2, "Yandy"

    aput-object v2, v0, v1

    const/16 v1, 0x2bb

    const-string v2, "Naya Indonesian"

    aput-object v2, v0, v1

    const/16 v1, 0x2bc

    const-string v2, "m\'"

    aput-object v2, v0, v1

    const/16 v1, 0x2bd

    const-string v2, "Dasom City(KOR)"

    aput-object v2, v0, v1

    const/16 v1, 0x2be

    const-string v2, "atoosa"

    aput-object v2, v0, v1

    const/16 v1, 0x2bf

    const-string v2, "sChnitZ"

    aput-object v2, v0, v1

    const/16 v1, 0x2c0

    const-string v2, "sssung"

    aput-object v2, v0, v1

    const/16 v1, 0x2c1

    const-string v2, "Happy :)"

    aput-object v2, v0, v1

    const/16 v1, 0x2c2

    const-string v2, "jinjjugirl"

    aput-object v2, v0, v1

    const/16 v1, 0x2c3

    const-string v2, "sirra"

    aput-object v2, v0, v1

    const/16 v1, 0x2c4

    const-string v2, "gamaco"

    aput-object v2, v0, v1

    const/16 v1, 0x2c5

    const-string v2, "Kayde7104"

    aput-object v2, v0, v1

    const/16 v1, 0x2c6

    const-string v2, "Bongbong_"

    aput-object v2, v0, v1

    const/16 v1, 0x2c7

    const-string v2, "Mimi5"

    aput-object v2, v0, v1

    const/16 v1, 0x2c8

    const-string v2, "N   IGOR"

    aput-object v2, v0, v1

    const/16 v1, 0x2c9

    const-string v2, "RYONRYON"

    aput-object v2, v0, v1

    const/16 v1, 0x2ca

    const-string v2, "axleen"

    aput-object v2, v0, v1

    const/16 v1, 0x2cb

    const-string v2, "\u0623\u0646\u064a\u0646"

    aput-object v2, v0, v1

    const/16 v1, 0x2cc

    const-string v2, "Eric C"

    aput-object v2, v0, v1

    const/16 v1, 0x2cd

    const-string v2, "wejdan"

    aput-object v2, v0, v1

    const/16 v1, 0x2ce

    const-string v2, "muku"

    aput-object v2, v0, v1

    const/16 v1, 0x2cf

    const-string v2, "Lilavatu"

    aput-object v2, v0, v1

    const/16 v1, 0x2d0

    const-string v2, "MARK LIU"

    aput-object v2, v0, v1

    const/16 v1, 0x2d1

    const-string v2, "Darrylpheonix"

    aput-object v2, v0, v1

    const/16 v1, 0x2d2

    const-string v2, "\u80a5\u91ce"

    aput-object v2, v0, v1

    const/16 v1, 0x2d3

    const-string v2, "DuHyeon"

    aput-object v2, v0, v1

    const/16 v1, 0x2d4

    const-string v2, "mage_60"

    aput-object v2, v0, v1

    const/16 v1, 0x2d5

    const-string v2, "senhor"

    aput-object v2, v0, v1

    const/16 v1, 0x2d6

    const-string v2, "aqilah comel"

    aput-object v2, v0, v1

    const/16 v1, 0x2d7

    const-string v2, "qOl"

    aput-object v2, v0, v1

    const/16 v1, 0x2d8

    const-string v2, "duongsong"

    aput-object v2, v0, v1

    const/16 v1, 0x2d9

    const-string v2, "goh wei ji"

    aput-object v2, v0, v1

    const/16 v1, 0x2da

    const-string v2, "Shorty55"

    aput-object v2, v0, v1

    const/16 v1, 0x2db

    const-string v2, "Loutab"

    aput-object v2, v0, v1

    const/16 v1, 0x2dc

    const-string v2, "juntakx"

    aput-object v2, v0, v1

    const/16 v1, 0x2dd

    const-string v2, "sgoh"

    aput-object v2, v0, v1

    const/16 v1, 0x2de

    const-string v2, "Jessss Palomi"

    aput-object v2, v0, v1

    const/16 v1, 0x2df

    const-string v2, "Minnie A"

    aput-object v2, v0, v1

    const/16 v1, 0x2e0

    const-string v2, "ADDIE&AUSTIN"

    aput-object v2, v0, v1

    const/16 v1, 0x2e1

    const-string v2, "TYGERWUZ"

    aput-object v2, v0, v1

    const/16 v1, 0x2e2

    const-string v2, "\u25ceneko\u25ce"

    aput-object v2, v0, v1

    const/16 v1, 0x2e3

    const-string v2, "lluke"

    aput-object v2, v0, v1

    const/16 v1, 0x2e4

    const-string v2, "Miracle kid"

    aput-object v2, v0, v1

    const/16 v1, 0x2e5

    const-string v2, "\u8c93\u5152\u5c71\u838a888"

    aput-object v2, v0, v1

    const/16 v1, 0x2e6

    const-string v2, "~lanlan~."

    aput-object v2, v0, v1

    const/16 v1, 0x2e7

    const-string v2, "Hisbeautifulgirl"

    aput-object v2, v0, v1

    const/16 v1, 0x2e8

    const-string v2, "sjruby"

    aput-object v2, v0, v1

    const/16 v1, 0x2e9

    const-string v2, "Monshishi"

    aput-object v2, v0, v1

    const/16 v1, 0x2ea

    const-string v2, "KSA"

    aput-object v2, v0, v1

    const/16 v1, 0x2eb

    const-string v2, "Mawrine"

    aput-object v2, v0, v1

    const/16 v1, 0x2ec

    const-string v2, "MAC5"

    aput-object v2, v0, v1

    const/16 v1, 0x2ed

    const-string v2, "ZHANNA-VITALIY"

    aput-object v2, v0, v1

    const/16 v1, 0x2ee

    const-string v2, "Saralever"

    aput-object v2, v0, v1

    const/16 v1, 0x2ef

    const-string v2, "gfhjjvc"

    aput-object v2, v0, v1

    const/16 v1, 0x2f0

    const-string v2, "KingJim"

    aput-object v2, v0, v1

    const/16 v1, 0x2f1

    const-string v2, "ADID"

    aput-object v2, v0, v1

    const/16 v1, 0x2f2

    const-string v2, "chichai0416"

    aput-object v2, v0, v1

    const/16 v1, 0x2f3

    const-string v2, "murari1@ymail"

    aput-object v2, v0, v1

    const/16 v1, 0x2f4

    const-string v2, "touki"

    aput-object v2, v0, v1

    const/16 v1, 0x2f5

    const-string v2, "mayde"

    aput-object v2, v0, v1

    const/16 v1, 0x2f6

    const-string v2, "chloe and cairan"

    aput-object v2, v0, v1

    const/16 v1, 0x2f7

    const-string v2, "Lun xynh"

    aput-object v2, v0, v1

    const/16 v1, 0x2f8

    const-string v2, "Princess30"

    aput-object v2, v0, v1

    const/16 v1, 0x2f9

    const-string v2, "aaaaajjdjdi"

    aput-object v2, v0, v1

    const/16 v1, 0x2fa

    const-string v2, "benninoland"

    aput-object v2, v0, v1

    const/16 v1, 0x2fb

    const-string v2, "tanya venice"

    aput-object v2, v0, v1

    const/16 v1, 0x2fc

    const-string v2, "Louise W"

    aput-object v2, v0, v1

    const/16 v1, 0x2fd

    const-string v2, "kim91"

    aput-object v2, v0, v1

    const/16 v1, 0x2fe

    const-string v2, "Rubymario"

    aput-object v2, v0, v1

    const/16 v1, 0x2ff

    const-string v2, "goldengoose"

    aput-object v2, v0, v1

    const/16 v1, 0x300

    const-string v2, "CKL1973"

    aput-object v2, v0, v1

    const/16 v1, 0x301

    const-string v2, "LolyPoly"

    aput-object v2, v0, v1

    const/16 v1, 0x302

    const-string v2, "!3\u20acN*\u20ac@$\u00a5"

    aput-object v2, v0, v1

    const/16 v1, 0x303

    const-string v2, "Drakaru"

    aput-object v2, v0, v1

    const/16 v1, 0x304

    const-string v2, "Kelly L"

    aput-object v2, v0, v1

    const/16 v1, 0x305

    const-string v2, "Princess Sam."

    aput-object v2, v0, v1

    const/16 v1, 0x306

    const-string v2, "pinkLoy"

    aput-object v2, v0, v1

    const/16 v1, 0x307

    const-string v2, "satfire"

    aput-object v2, v0, v1

    const/16 v1, 0x308

    const-string v2, "Sunny:D"

    aput-object v2, v0, v1

    const/16 v1, 0x309

    const-string v2, "alley."

    aput-object v2, v0, v1

    const/16 v1, 0x30a

    const-string v2, "Whitemike"

    aput-object v2, v0, v1

    const/16 v1, 0x30b

    const-string v2, "Dimmsdale"

    aput-object v2, v0, v1

    const/16 v1, 0x30c

    const-string v2, "SGIN"

    aput-object v2, v0, v1

    const/16 v1, 0x30d

    const-string v2, "SAMKK"

    aput-object v2, v0, v1

    const/16 v1, 0x30e

    const-string v2, "cerrei"

    aput-object v2, v0, v1

    const/16 v1, 0x30f

    const-string v2, "parakito"

    aput-object v2, v0, v1

    const/16 v1, 0x310

    const-string v2, "msea"

    aput-object v2, v0, v1

    const/16 v1, 0x311

    const-string v2, "JYOONlover"

    aput-object v2, v0, v1

    const/16 v1, 0x312

    const-string v2, "King shizons"

    aput-object v2, v0, v1

    const/16 v1, 0x313

    const-string v2, "\u0422\u0440\u0443\u0442\u0435\u043d\u044c"

    aput-object v2, v0, v1

    const/16 v1, 0x314

    const-string v2, "phoebie0126"

    aput-object v2, v0, v1

    const/16 v1, 0x315

    const-string v2, "BoxiePoser"

    aput-object v2, v0, v1

    const/16 v1, 0x316

    const-string v2, "Jumarion"

    aput-object v2, v0, v1

    const/16 v1, 0x317

    const-string v2, "AlieFura"

    aput-object v2, v0, v1

    const/16 v1, 0x318

    const-string v2, "tian tian"

    aput-object v2, v0, v1

    const/16 v1, 0x319

    const-string v2, "lindauer"

    aput-object v2, v0, v1

    const/16 v1, 0x31a

    const-string v2, "Rooza"

    aput-object v2, v0, v1

    const/16 v1, 0x31b

    const-string v2, "dadounet 45"

    aput-object v2, v0, v1

    const/16 v1, 0x31c

    const-string v2, "Zubi"

    aput-object v2, v0, v1

    const/16 v1, 0x31d

    const-string v2, "EJO1970"

    aput-object v2, v0, v1

    const/16 v1, 0x31e

    const-string v2, "genesiso"

    aput-object v2, v0, v1

    const/16 v1, 0x31f

    const-string v2, "Scott....."

    aput-object v2, v0, v1

    const/16 v1, 0x320

    const-string v2, "Andrew yu"

    aput-object v2, v0, v1

    const/16 v1, 0x321

    const-string v2, "bongil"

    aput-object v2, v0, v1

    const/16 v1, 0x322

    const-string v2, "James00627"

    aput-object v2, v0, v1

    const/16 v1, 0x323

    const-string v2, "LokiStryke"

    aput-object v2, v0, v1

    const/16 v1, 0x324

    const-string v2, "oresths"

    aput-object v2, v0, v1

    const/16 v1, 0x325

    const-string v2, "nuscheltier"

    aput-object v2, v0, v1

    const/16 v1, 0x326

    const-string v2, "County King"

    aput-object v2, v0, v1

    const/16 v1, 0x327

    const-string v2, "pollysnow"

    aput-object v2, v0, v1

    const/16 v1, 0x328

    const-string v2, "asifullah"

    aput-object v2, v0, v1

    const/16 v1, 0x329

    const-string v2, "pinke"

    aput-object v2, v0, v1

    const/16 v1, 0x32a

    const-string v2, "am taima"

    aput-object v2, v0, v1

    const/16 v1, 0x32b

    const-string v2, "bitajoon"

    aput-object v2, v0, v1

    const/16 v1, 0x32c

    const-string v2, "chichie"

    aput-object v2, v0, v1

    const/16 v1, 0x32d

    const-string v2, "MKnight89"

    aput-object v2, v0, v1

    const/16 v1, 0x32e

    const-string v2, "DianYan"

    aput-object v2, v0, v1

    const/16 v1, 0x32f

    const-string v2, ":\'>ALYSSA"

    aput-object v2, v0, v1

    const/16 v1, 0x330

    const-string v2, "Moosi111"

    aput-object v2, v0, v1

    const/16 v1, 0x331

    const-string v2, "grkykbnc"

    aput-object v2, v0, v1

    const/16 v1, 0x332

    const-string v2, "BN123"

    aput-object v2, v0, v1

    const/16 v1, 0x333

    const-string v2, "Tinaaaa"

    aput-object v2, v0, v1

    const/16 v1, 0x334

    const-string v2, "patje"

    aput-object v2, v0, v1

    const/16 v1, 0x335

    const-string v2, "Sexyangel"

    aput-object v2, v0, v1

    const/16 v1, 0x336

    const-string v2, "CHANTALL"

    aput-object v2, v0, v1

    const/16 v1, 0x337

    const-string v2, "BOO CAKES"

    aput-object v2, v0, v1

    const/16 v1, 0x338

    const-string v2, "DessyBoo"

    aput-object v2, v0, v1

    const/16 v1, 0x339

    const-string v2, "Lord Boldercarb"

    aput-object v2, v0, v1

    const/16 v1, 0x33a

    const-string v2, "Saile29"

    aput-object v2, v0, v1

    const/16 v1, 0x33b

    const-string v2, "inasd"

    aput-object v2, v0, v1

    const/16 v1, 0x33c

    const-string v2, "crea!!!"

    aput-object v2, v0, v1

    const/16 v1, 0x33d

    const-string v2, "cloucoops"

    aput-object v2, v0, v1

    const/16 v1, 0x33e

    const-string v2, "jsujin"

    aput-object v2, v0, v1

    const/16 v1, 0x33f

    const-string v2, "jvisco26"

    aput-object v2, v0, v1

    const/16 v1, 0x340

    const-string v2, "haven air"

    aput-object v2, v0, v1

    const/16 v1, 0x341

    const-string v2, "\u71d5\u8389"

    aput-object v2, v0, v1

    const/16 v1, 0x342

    const-string v2, "Tumzi"

    aput-object v2, v0, v1

    const/16 v1, 0x343

    const-string v2, "SUZAKU"

    aput-object v2, v0, v1

    const/16 v1, 0x344

    const-string v2, "mizthao"

    aput-object v2, v0, v1

    const/16 v1, 0x345

    const-string v2, "Iik mns"

    aput-object v2, v0, v1

    const/16 v1, 0x346

    const-string v2, "\u0623\u0628\u0648 \u062d\u0645\u062f"

    aput-object v2, v0, v1

    const/16 v1, 0x347

    const-string v2, "sweet-pea"

    aput-object v2, v0, v1

    const/16 v1, 0x348

    const-string v2, "Mar city"

    aput-object v2, v0, v1

    const/16 v1, 0x349

    const-string v2, "Yahir2004l"

    aput-object v2, v0, v1

    const/16 v1, 0x34a

    const-string v2, "shanieshareed"

    aput-object v2, v0, v1

    const/16 v1, 0x34b

    const-string v2, "babalon"

    aput-object v2, v0, v1

    const/16 v1, 0x34c

    const-string v2, "Thix"

    aput-object v2, v0, v1

    const/16 v1, 0x34d

    const-string v2, "Searise"

    aput-object v2, v0, v1

    const/16 v1, 0x34e

    const-string v2, "sM\'tz..vai......"

    aput-object v2, v0, v1

    const/16 v1, 0x34f

    const-string v2, "SuaaD"

    aput-object v2, v0, v1

    const/16 v1, 0x350

    const-string v2, "man in black"

    aput-object v2, v0, v1

    const/16 v1, 0x351

    const-string v2, "Dinfronha"

    aput-object v2, v0, v1

    const/16 v1, 0x352

    const-string v2, "LOUIILLER"

    aput-object v2, v0, v1

    const/16 v1, 0x353

    const-string v2, "masterchris"

    aput-object v2, v0, v1

    const/16 v1, 0x354

    const-string v2, "Moo Chip"

    aput-object v2, v0, v1

    const/16 v1, 0x355

    const-string v2, "Makky Town"

    aput-object v2, v0, v1

    const/16 v1, 0x356

    const-string v2, "eric\'s  country"

    aput-object v2, v0, v1

    const/16 v1, 0x357

    const-string v2, "R to da O N"

    aput-object v2, v0, v1

    const/16 v1, 0x358

    const-string v2, "Hanna\'s Dad"

    aput-object v2, v0, v1

    const/16 v1, 0x359

    const-string v2, "mrs lewis"

    aput-object v2, v0, v1

    const/16 v1, 0x35a

    const-string v2, "Sylvius"

    aput-object v2, v0, v1

    const/16 v1, 0x35b

    const-string v2, "Osita"

    aput-object v2, v0, v1

    const/16 v1, 0x35c

    const-string v2, "Rommy19"

    aput-object v2, v0, v1

    const/16 v1, 0x35d

    const-string v2, "QueenofAll"

    aput-object v2, v0, v1

    const/16 v1, 0x35e

    const-string v2, "Ashley 2425"

    aput-object v2, v0, v1

    const/16 v1, 0x35f

    const-string v2, "yukiniirisuta"

    aput-object v2, v0, v1

    const/16 v1, 0x360

    const-string v2, "2bang"

    aput-object v2, v0, v1

    const/16 v1, 0x361

    const-string v2, "Tina8109"

    aput-object v2, v0, v1

    const/16 v1, 0x362

    const-string v2, "DAVID 007"

    aput-object v2, v0, v1

    const/16 v1, 0x363

    const-string v2, "neeceez"

    aput-object v2, v0, v1

    const/16 v1, 0x364

    const-string v2, "rio2"

    aput-object v2, v0, v1

    const/16 v1, 0x365

    const-string v2, "Gdraoung"

    aput-object v2, v0, v1

    const/16 v1, 0x366

    const-string v2, "Amba-lea"

    aput-object v2, v0, v1

    const/16 v1, 0x367

    const-string v2, "Kiara Y H"

    aput-object v2, v0, v1

    const/16 v1, 0x368

    const-string v2, "jamong"

    aput-object v2, v0, v1

    const/16 v1, 0x369

    const-string v2, "\u0e19\u0e34\u0e2a\u0e32"

    aput-object v2, v0, v1

    const/16 v1, 0x36a

    const-string v2, "Cristy Chu"

    aput-object v2, v0, v1

    const/16 v1, 0x36b

    const-string v2, "a f a a"

    aput-object v2, v0, v1

    const/16 v1, 0x36c

    const-string v2, "ellie.sabrina"

    aput-object v2, v0, v1

    const/16 v1, 0x36d

    const-string v2, "My F"

    aput-object v2, v0, v1

    const/16 v1, 0x36e

    const-string v2, "help my opera"

    aput-object v2, v0, v1

    const/16 v1, 0x36f

    const-string v2, "vero111"

    aput-object v2, v0, v1

    const/16 v1, 0x370

    const-string v2, "Marlena32145"

    aput-object v2, v0, v1

    const/16 v1, 0x371

    const-string v2, "turbo2020"

    aput-object v2, v0, v1

    const/16 v1, 0x372

    const-string v2, "Foxykins"

    aput-object v2, v0, v1

    const/16 v1, 0x373

    const-string v2, "scene"

    aput-object v2, v0, v1

    const/16 v1, 0x374

    const-string v2, "Dawnypuck"

    aput-object v2, v0, v1

    const/16 v1, 0x375

    const-string v2, "William."

    aput-object v2, v0, v1

    const/16 v1, 0x376

    const-string v2, "sohee\uc9f1"

    aput-object v2, v0, v1

    const/16 v1, 0x377

    const-string v2, "mophy"

    aput-object v2, v0, v1

    const/16 v1, 0x378

    const-string v2, "\u041e\u043b"

    aput-object v2, v0, v1

    const/16 v1, 0x379

    const-string v2, "brattface"

    aput-object v2, v0, v1

    const/16 v1, 0x37a

    const-string v2, "Xavier le bg"

    aput-object v2, v0, v1

    const/16 v1, 0x37b

    const-string v2, "Ioio5"

    aput-object v2, v0, v1

    const/16 v1, 0x37c

    const-string v2, "Ypsitucky lvl50"

    aput-object v2, v0, v1

    const/16 v1, 0x37d

    const-string v2, "bjorn1234"

    aput-object v2, v0, v1

    const/16 v1, 0x37e

    const-string v2, "coffee-girl"

    aput-object v2, v0, v1

    const/16 v1, 0x37f

    const-string v2, "Georlia"

    aput-object v2, v0, v1

    const/16 v1, 0x380

    const-string v2, "ca6p\u00f1Ha"

    aput-object v2, v0, v1

    const/16 v1, 0x381

    const-string v2, "superman13"

    aput-object v2, v0, v1

    const/16 v1, 0x382

    const-string v2, "MOMMY TO BE..."

    aput-object v2, v0, v1

    const/16 v1, 0x383

    const-string v2, "Fugu"

    aput-object v2, v0, v1

    const/16 v1, 0x384

    const-string v2, "T d"

    aput-object v2, v0, v1

    const/16 v1, 0x385

    const-string v2, "ako lang"

    aput-object v2, v0, v1

    const/16 v1, 0x386

    const-string v2, "yhezkel"

    aput-object v2, v0, v1

    const/16 v1, 0x387

    const-string v2, "HongHuy"

    aput-object v2, v0, v1

    const/16 v1, 0x388

    const-string v2, "profanic2"

    aput-object v2, v0, v1

    const/16 v1, 0x389

    const-string v2, "ltk159"

    aput-object v2, v0, v1

    const/16 v1, 0x38a

    const-string v2, "\u043a\u0441\u044e\u043a\u0441\u0430"

    aput-object v2, v0, v1

    const/16 v1, 0x38b

    const-string v2, "Eternity27"

    aput-object v2, v0, v1

    const/16 v1, 0x38c

    const-string v2, "angelika audi"

    aput-object v2, v0, v1

    const/16 v1, 0x38d

    const-string v2, "Zerath"

    aput-object v2, v0, v1

    const/16 v1, 0x38e

    const-string v2, "nox119"

    aput-object v2, v0, v1

    const/16 v1, 0x38f

    const-string v2, "\u904e\u8def\u4eba\u4e8c\u4e16"

    aput-object v2, v0, v1

    const/16 v1, 0x390

    const-string v2, "r3jack"

    aput-object v2, v0, v1

    const/16 v1, 0x391

    const-string v2, "odh"

    aput-object v2, v0, v1

    const/16 v1, 0x392

    const-string v2, "veritas12"

    aput-object v2, v0, v1

    const/16 v1, 0x393

    const-string v2, "millNEum falcon"

    aput-object v2, v0, v1

    const/16 v1, 0x394

    const-string v2, "sagar.exe"

    aput-object v2, v0, v1

    const/16 v1, 0x395

    const-string v2, "pranee"

    aput-object v2, v0, v1

    const/16 v1, 0x396

    const-string v2, "KBear"

    aput-object v2, v0, v1

    const/16 v1, 0x397

    const-string v2, "Jade world"

    aput-object v2, v0, v1

    const/16 v1, 0x398

    const-string v2, "kubu"

    aput-object v2, v0, v1

    const/16 v1, 0x399

    const-string v2, "Cueva grande"

    aput-object v2, v0, v1

    const/16 v1, 0x39a

    const-string v2, "jung jis"

    aput-object v2, v0, v1

    const/16 v1, 0x39b

    const-string v2, "xusa"

    aput-object v2, v0, v1

    const/16 v1, 0x39c

    const-string v2, "Foxbrush"

    aput-object v2, v0, v1

    const/16 v1, 0x39d

    const-string v2, "Ponyboy"

    aput-object v2, v0, v1

    const/16 v1, 0x39e

    const-string v2, "squishybiscut"

    aput-object v2, v0, v1

    const/16 v1, 0x39f

    const-string v2, "yiums*\uc730"

    aput-object v2, v0, v1

    const/16 v1, 0x3a0

    const-string v2, "Medea <3"

    aput-object v2, v0, v1

    const/16 v1, 0x3a1

    const-string v2, "aangle"

    aput-object v2, v0, v1

    const/16 v1, 0x3a2

    const-string v2, "MaeWyn"

    aput-object v2, v0, v1

    const/16 v1, 0x3a3

    const-string v2, "gec"

    aput-object v2, v0, v1

    const/16 v1, 0x3a4

    const-string v2, "Raymondc"

    aput-object v2, v0, v1

    const/16 v1, 0x3a5

    const-string v2, "PokPokDonald"

    aput-object v2, v0, v1

    const/16 v1, 0x3a6

    const-string v2, "Kimber Leigh"

    aput-object v2, v0, v1

    const/16 v1, 0x3a7

    const-string v2, "King Steich"

    aput-object v2, v0, v1

    const/16 v1, 0x3a8

    const-string v2, "Fairies Kiss"

    aput-object v2, v0, v1

    const/16 v1, 0x3a9

    const-string v2, "moorhen"

    aput-object v2, v0, v1

    const/16 v1, 0x3aa

    const-string v2, "Gingerlie"

    aput-object v2, v0, v1

    const/16 v1, 0x3ab

    const-string v2, "ninoxka"

    aput-object v2, v0, v1

    const/16 v1, 0x3ac

    const-string v2, "\u0647\u062f\u0648\u0648\u0648\u0621"

    aput-object v2, v0, v1

    const/16 v1, 0x3ad

    const-string v2, "shark1015"

    aput-object v2, v0, v1

    const/16 v1, 0x3ae

    const-string v2, "CheChe~\u2665"

    aput-object v2, v0, v1

    const/16 v1, 0x3af

    const-string v2, "tronzok"

    aput-object v2, v0, v1

    const/16 v1, 0x3b0

    const-string v2, "DoctorO"

    aput-object v2, v0, v1

    const/16 v1, 0x3b1

    const-string v2, "minjoo^^\u2665"

    aput-object v2, v0, v1

    const/16 v1, 0x3b2

    const-string v2, "GU ADD"

    aput-object v2, v0, v1

    const/16 v1, 0x3b3

    const-string v2, "haeun\u2665\u2665"

    aput-object v2, v0, v1

    const/16 v1, 0x3b4

    const-string v2, "Luna K Schumie"

    aput-object v2, v0, v1

    const/16 v1, 0x3b5

    const-string v2, "elllora"

    aput-object v2, v0, v1

    const/16 v1, 0x3b6

    const-string v2, "Yu_ey^^"

    aput-object v2, v0, v1

    const/16 v1, 0x3b7

    const-string v2, "lucie88"

    aput-object v2, v0, v1

    const/16 v1, 0x3b8

    const-string v2, "TyNaLySa"

    aput-object v2, v0, v1

    const/16 v1, 0x3b9

    const-string v2, "Rafal1987"

    aput-object v2, v0, v1

    const/16 v1, 0x3ba

    const-string v2, "Bento."

    aput-object v2, v0, v1

    const/16 v1, 0x3bb

    const-string v2, "Gloria 3"

    aput-object v2, v0, v1

    const/16 v1, 0x3bc

    const-string v2, "BOSS0634"

    aput-object v2, v0, v1

    const/16 v1, 0x3bd

    const-string v2, "spank nuckles"

    aput-object v2, v0, v1

    const/16 v1, 0x3be

    const-string v2, "Kelsey Mullino"

    aput-object v2, v0, v1

    const/16 v1, 0x3bf

    const-string v2, "Emperor Nero"

    aput-object v2, v0, v1

    const/16 v1, 0x3c0

    const-string v2, "Franni"

    aput-object v2, v0, v1

    const/16 v1, 0x3c1

    const-string v2, "Susie\'s kingdom"

    aput-object v2, v0, v1

    const/16 v1, 0x3c2

    const-string v2, "TAM NGUYEN"

    aput-object v2, v0, v1

    const/16 v1, 0x3c3

    const-string v2, "Feelin Froggy2"

    aput-object v2, v0, v1

    const/16 v1, 0x3c4

    const-string v2, "*katie*"

    aput-object v2, v0, v1

    const/16 v1, 0x3c5

    const-string v2, "THE STRANGER"

    aput-object v2, v0, v1

    const/16 v1, 0x3c6

    const-string v2, "BrattyApple"

    aput-object v2, v0, v1

    const/16 v1, 0x3c7

    const-string v2, "NikkiBY"

    aput-object v2, v0, v1

    const/16 v1, 0x3c8

    const-string v2, "Nadia.05"

    aput-object v2, v0, v1

    const/16 v1, 0x3c9

    const-string v2, "maeyr"

    aput-object v2, v0, v1

    const/16 v1, 0x3ca

    const-string v2, "lion..."

    aput-object v2, v0, v1

    const/16 v1, 0x3cb

    const-string v2, "Ashuma"

    aput-object v2, v0, v1

    const/16 v1, 0x3cc

    const-string v2, "Mnd9"

    aput-object v2, v0, v1

    const/16 v1, 0x3cd

    const-string v2, "MRTN"

    aput-object v2, v0, v1

    const/16 v1, 0x3ce

    const-string v2, "moneyland"

    aput-object v2, v0, v1

    const/16 v1, 0x3cf

    const-string v2, "Vishal86"

    aput-object v2, v0, v1

    const/16 v1, 0x3d0

    const-string v2, "ALEX\u2665ABI"

    aput-object v2, v0, v1

    const/16 v1, 0x3d1

    const-string v2, "anjelly"

    aput-object v2, v0, v1

    const/16 v1, 0x3d2

    const-string v2, "James\' Kingdom"

    aput-object v2, v0, v1

    const/16 v1, 0x3d3

    const-string v2, "hyrstyres"

    aput-object v2, v0, v1

    const/16 v1, 0x3d4

    const-string v2, "Dusu"

    aput-object v2, v0, v1

    const/16 v1, 0x3d5

    const-string v2, "\"Joex\"purple!"

    aput-object v2, v0, v1

    const/16 v1, 0x3d6

    const-string v2, "msysusie"

    aput-object v2, v0, v1

    const/16 v1, 0x3d7

    const-string v2, "mr. felix"

    aput-object v2, v0, v1

    const/16 v1, 0x3d8

    const-string v2, "gjp"

    aput-object v2, v0, v1

    const/16 v1, 0x3d9

    const-string v2, "usernuts"

    aput-object v2, v0, v1

    const/16 v1, 0x3da

    const-string v2, "Viruseq_Pl"

    aput-object v2, v0, v1

    const/16 v1, 0x3db

    const-string v2, "Matko Mrkvicka"

    aput-object v2, v0, v1

    const/16 v1, 0x3dc

    const-string v2, "NANY34"

    aput-object v2, v0, v1

    const/16 v1, 0x3dd

    const-string v2, "Jva"

    aput-object v2, v0, v1

    .line 132
    sput-object v0, Lcom/droidhen/fortconquer/kits/ArenaAgent;->fakeNames:[Ljava/lang/String;

    .line 136
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/kits/ArenaAgent;->pool:Ljava/util/concurrent/ExecutorService;

    .line 34
    return-void
.end method

.method static synthetic access$0(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    invoke-static {p0}, Lcom/droidhen/fortconquer/kits/ArenaAgent;->toParamStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/droidhen/fortconquer/kits/ArenaAgent;->bUploadTestData:Z

    return v0
.end method

.method private addRequest(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/droidhen/fortconquer/kits/ArenaAgent;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/droidhen/fortconquer/kits/ArenaAgent$NetworkService;

    invoke-direct {v1, p0, p1}, Lcom/droidhen/fortconquer/kits/ArenaAgent$NetworkService;-><init>(Lcom/droidhen/fortconquer/kits/ArenaAgent;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 217
    return-void
.end method

.method public static getInstance()Lcom/droidhen/fortconquer/kits/ArenaAgent;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/droidhen/fortconquer/kits/ArenaAgent;->INSTANCE:Lcom/droidhen/fortconquer/kits/ArenaAgent;

    return-object v0
.end method

.method private static toParamStr(Ljava/util/Map;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 223
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/16 v0, 0x3f

    .line 224
    .local v0, "head":C
    if-eqz p0, :cond_0

    .line 225
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 226
    .local v2, "param":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 234
    .end local v2    # "param":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 226
    .restart local v2    # "param":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 227
    .local v1, "p":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 228
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v4, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 229
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 230
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v4, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 231
    const/16 v0, 0x26

    goto :goto_0
.end method


# virtual methods
.method protected calcCardLevel(Ljava/util/ArrayList;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/droidhen/fortconquer/units/Card;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "pCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 91
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerLevel()I

    move-result v1

    .line 92
    .local v1, "cardLevel":I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    move v2, v1

    .line 116
    .end local v1    # "cardLevel":I
    .local v2, "cardLevel":I
    :goto_0
    return v2

    .line 95
    .end local v2    # "cardLevel":I
    .restart local v1    # "cardLevel":I
    :cond_1
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/droidhen/fortconquer/units/Card;

    .line 96
    .local v3, "playerCard":Lcom/droidhen/fortconquer/units/Card;
    const/4 v4, 0x0

    .line 97
    .local v4, "standardCard":Lcom/droidhen/fortconquer/units/Card;
    const/4 v0, 0x0

    .line 98
    .local v0, "averagePower":F
    invoke-virtual {v3}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v5

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Unit;->getCamp()I

    move-result v5

    if-ne v5, v8, :cond_4

    .line 100
    invoke-static {v6}, Lcom/droidhen/fortconquer/units/Card;->genDragonCard(I)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v4

    .line 101
    sget v0, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_POWER_AVERAGE_DRAGON:F

    .line 108
    :goto_1
    invoke-virtual {p0, v3, v4, v0}, Lcom/droidhen/fortconquer/kits/ArenaAgent;->getCardLevel(Lcom/droidhen/fortconquer/units/Card;Lcom/droidhen/fortconquer/units/Card;F)I

    move-result v1

    .line 109
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v8, :cond_5

    .line 110
    add-int/lit8 v1, v1, -0x2

    .line 113
    :cond_2
    :goto_2
    if-ge v1, v7, :cond_3

    .line 114
    const/4 v1, 0x1

    :cond_3
    move v2, v1

    .line 116
    .end local v1    # "cardLevel":I
    .restart local v2    # "cardLevel":I
    goto :goto_0

    .line 104
    .end local v2    # "cardLevel":I
    .restart local v1    # "cardLevel":I
    :cond_4
    invoke-static {}, Lcom/droidhen/fortconquer/units/Card;->genRandomCard()Lcom/droidhen/fortconquer/units/Card;

    move-result-object v4

    .line 105
    sget v0, Lcom/droidhen/fortconquer/stages/StageDataConstants;->UNIT_POWER_AVERAGE:F

    goto :goto_1

    .line 111
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v5, v7, :cond_2

    .line 112
    add-int/lit8 v1, v1, -0x4

    goto :goto_2
.end method

.method genFakeCards(I)Ljava/util/ArrayList;
    .locals 11
    .param p1, "pLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/droidhen/fortconquer/units/Card;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x5

    .line 179
    const/4 v5, 0x1

    if-ge p1, v5, :cond_0

    .line 180
    const/4 p1, 0x1

    .line 181
    :cond_0
    invoke-static {v6, v10}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v5

    mul-int/2addr v5, p1

    add-int/lit8 v5, v5, -0x1

    sput v5, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    .line 183
    const/4 v0, 0x3

    .line 184
    .local v0, "cardNum":I
    if-ge p1, v7, :cond_1

    .line 185
    const/4 v0, 0x3

    .line 199
    :goto_0
    add-int/lit8 v5, v0, -0x2

    invoke-static {v8, v5}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v1

    .line 201
    .local v1, "dragonNum":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .local v2, "fakeCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-lt v3, v0, :cond_7

    .line 212
    return-object v2

    .line 186
    .end local v1    # "dragonNum":I
    .end local v2    # "fakeCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    .end local v3    # "i":I
    :cond_1
    if-lt p1, v7, :cond_2

    if-ge p1, v6, :cond_2

    .line 187
    invoke-static {v7, v9}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v0

    goto :goto_0

    .line 188
    :cond_2
    const/16 v5, 0xf

    if-ge p1, v5, :cond_3

    .line 189
    const/4 v0, 0x4

    goto :goto_0

    .line 190
    :cond_3
    const/16 v5, 0xf

    if-lt p1, v5, :cond_4

    const/16 v5, 0x14

    if-ge p1, v5, :cond_4

    .line 191
    invoke-static {v9, v6}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v0

    goto :goto_0

    .line 192
    :cond_4
    const/16 v5, 0x32

    if-ge p1, v5, :cond_5

    .line 193
    const/4 v0, 0x5

    goto :goto_0

    .line 194
    :cond_5
    const/16 v5, 0x32

    if-lt p1, v5, :cond_6

    const/16 v5, 0x3c

    if-ge p1, v5, :cond_6

    .line 195
    invoke-static {v6, v10}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v0

    goto :goto_0

    .line 197
    :cond_6
    const/4 v0, 0x6

    goto :goto_0

    .line 204
    .restart local v1    # "dragonNum":I
    .restart local v2    # "fakeCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    .restart local v3    # "i":I
    :cond_7
    const/4 v4, 0x0

    .line 205
    .local v4, "newCard":Lcom/droidhen/fortconquer/units/Card;
    if-ge v3, v1, :cond_8

    .line 206
    const/4 v5, 0x2

    invoke-static {v8, v5}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v5

    invoke-static {v5}, Lcom/droidhen/fortconquer/units/Card;->genDragonCard(I)Lcom/droidhen/fortconquer/units/Card;

    move-result-object v4

    .line 209
    :goto_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 208
    :cond_8
    invoke-static {}, Lcom/droidhen/fortconquer/units/Card;->genRandomCard()Lcom/droidhen/fortconquer/units/Card;

    move-result-object v4

    goto :goto_2
.end method

.method public getCardLevel(Lcom/droidhen/fortconquer/units/Card;Lcom/droidhen/fortconquer/units/Card;F)I
    .locals 7
    .param p1, "playerCard"    # Lcom/droidhen/fortconquer/units/Card;
    .param p2, "standardCard"    # Lcom/droidhen/fortconquer/units/Card;
    .param p3, "averagePower"    # F

    .prologue
    .line 120
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 121
    :cond_0
    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerLevel()I

    move-result v0

    .line 129
    :goto_0
    return v0

    .line 122
    :cond_1
    invoke-virtual {p1}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/units/Unit;->getBasicValue()I

    move-result v4

    invoke-virtual {p2}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v5

    invoke-virtual {v5}, Lcom/droidhen/fortconquer/units/Unit;->getBasicValue()I

    move-result v5

    sub-int v1, v4, v5

    .line 123
    .local v1, "deltaPower":I
    const/4 v2, 0x0

    .line 124
    .local v2, "deltaStage":I
    sget-object v4, Lcom/droidhen/fortconquer/stages/StageDataConstants;->INCREASE_CHANGE_STAGE:[I

    array-length v4, v4

    add-int/lit8 v3, v4, -0x1

    .local v3, "i":I
    :goto_1
    if-gez v3, :cond_2

    .line 128
    sget v4, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x5

    const/4 v6, 0x6

    invoke-static {v5, v6}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v5

    div-int/2addr v4, v5

    add-int/lit8 v0, v4, 0x1

    .line 129
    .local v0, "cardLevel":I
    goto :goto_0

    .line 125
    .end local v0    # "cardLevel":I
    :cond_2
    sget v4, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    sget-object v5, Lcom/droidhen/fortconquer/stages/StageDataConstants;->INCREASE_CHANGE_STAGE:[I

    aget v5, v5, v3

    if-le v4, v5, :cond_3

    .line 126
    int-to-float v4, v1

    sget-object v5, Lcom/droidhen/fortconquer/stages/StageDataConstants;->INCREASE_VALUE_STEP:[F

    aget v5, v5, v3

    mul-float/2addr v5, p3

    div-float/2addr v4, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    float-to-int v2, v4

    .line 124
    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_1
.end method

.method public requestBattle()V
    .locals 14

    .prologue
    .line 50
    const/4 v10, 0x0

    sput-boolean v10, Lcom/droidhen/fortconquer/kits/ArenaAgent;->bUploadTestData:Z

    .line 52
    invoke-static {}, Lcom/moreexchange/util/DeviceInformation;->getDeviceId()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "deviceID":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 55
    .local v5, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 58
    .local v8, "unixTime":J
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v12, 0x3e8

    div-long v12, v8, v12

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, "timeString":Ljava/lang/String;
    const/4 v1, 0x0

    .line 60
    .local v1, "cardNum":I
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v10

    iget-object v2, v10, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    .line 61
    .local v2, "curPlayer":Lcom/droidhen/fortconquer/units/Player;
    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Player;->getChosenCards()Ljava/util/ArrayList;

    move-result-object v0

    .line 62
    .local v0, "allCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 64
    :cond_0
    const-string v10, "function"

    const-string v11, "matchBattlePlayer"

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v10, "deviceid"

    invoke-interface {v5, v10, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v10, "time"

    invoke-interface {v5, v10, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v10, "userLevel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerLevel()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v10, "userName"

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    const-string v10, "levelScore"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/droidhen/fortconquer/units/Player;->getPlayerExp()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v10, "curStage"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    sget v12, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const-string v10, "cardNum"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v10, "actualLevel"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Lcom/droidhen/fortconquer/kits/ArenaAgent;->calcCardLevel(Ljava/util/ArrayList;)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/droidhen/fortconquer/units/Player;->getChosenCards()Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 75
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v1, :cond_2

    .line 86
    .end local v4    # "i":I
    :cond_1
    invoke-direct {p0, v5}, Lcom/droidhen/fortconquer/kits/ArenaAgent;->addRequest(Ljava/util/Map;)V

    .line 87
    return-void

    .line 77
    .restart local v4    # "i":I
    :cond_2
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v10}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v7

    .line 78
    .local v7, "unit":Lcom/droidhen/fortconquer/units/Unit;
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "atk"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Unit;->getAttack()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "hp"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Unit;->getHealth()F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "h"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v7, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v12, v12, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "c"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v7, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v12, v12, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "l"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, v7, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget v12, v12, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRace:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "q"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v11, v4, 0x1

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/droidhen/fortconquer/units/Unit;->getQuality()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v5, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0
.end method

.method public requestBattle(I)V
    .locals 17
    .param p1, "pLevel"    # I

    .prologue
    .line 139
    const/4 v12, 0x1

    sput-boolean v12, Lcom/droidhen/fortconquer/kits/ArenaAgent;->bUploadTestData:Z

    .line 140
    invoke-static {}, Lcom/moreexchange/util/DeviceInformation;->getDeviceId()Ljava/lang/String;

    move-result-object v5

    .line 141
    .local v5, "deviceID":Ljava/lang/String;
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 143
    .local v7, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 146
    .local v10, "unixTime":J
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v14, 0x3e8

    div-long v14, v10, v14

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 147
    .local v8, "timeString":Ljava/lang/String;
    const/4 v3, 0x0

    .line 148
    .local v3, "cardNum":I
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v12

    iget-object v4, v12, Lcom/droidhen/fortconquer/GameActivity;->mPlayer:Lcom/droidhen/fortconquer/units/Player;

    .line 149
    .local v4, "curPlayer":Lcom/droidhen/fortconquer/units/Player;
    invoke-virtual/range {p0 .. p1}, Lcom/droidhen/fortconquer/kits/ArenaAgent;->genFakeCards(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 150
    .local v2, "allCards":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/droidhen/fortconquer/units/Card;>;"
    if-eqz v4, :cond_0

    if-eqz v2, :cond_0

    .line 151
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 152
    :cond_0
    const-string v12, "function"

    const-string v13, "matchBattlePlayer"

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v12, "deviceid"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x0

    const v15, 0xf423f

    invoke-static {v14, v15}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v12, "time"

    invoke-interface {v7, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v12, "userLevel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const-string v12, "userName"

    sget-object v13, Lcom/droidhen/fortconquer/kits/ArenaAgent;->fakeNames:[Ljava/lang/String;

    const/4 v14, 0x0

    sget-object v15, Lcom/droidhen/fortconquer/kits/ArenaAgent;->fakeNames:[Ljava/lang/String;

    array-length v15, v15

    add-int/lit8 v15, v15, -0x1

    invoke-static {v14, v15}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v14

    aget-object v13, v13, v14

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    const-string v12, "levelScore"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, p1, -0x1

    mul-int/lit8 v14, v14, 0x64

    const/4 v15, 0x0

    const/16 v16, 0x63

    invoke-static/range {v15 .. v16}, Lorg/anddev/andengine/util/MathUtils;->random(II)I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    const-string v12, "curStage"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget v14, Lcom/droidhen/fortconquer/GameActivity;->sCurrentStage:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    const-string v12, "cardNum"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v12, "actualLevel"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/droidhen/fortconquer/units/Player;->getChosenCards()Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 163
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-lt v6, v3, :cond_2

    .line 174
    .end local v6    # "i":I
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/droidhen/fortconquer/kits/ArenaAgent;->addRequest(Ljava/util/Map;)V

    .line 175
    return-void

    .line 165
    .restart local v6    # "i":I
    :cond_2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/droidhen/fortconquer/units/Card;

    invoke-virtual {v12}, Lcom/droidhen/fortconquer/units/Card;->getUnit()Lcom/droidhen/fortconquer/units/Unit;

    move-result-object v9

    .line 166
    .local v9, "unit":Lcom/droidhen/fortconquer/units/Unit;
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "atk"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/droidhen/fortconquer/units/Unit;->getAttack()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "hp"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/droidhen/fortconquer/units/Unit;->getHealth()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "h"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v9, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartHead:Lcom/droidhen/fortconquer/units/UnitPartHead;

    iget v14, v14, Lcom/droidhen/fortconquer/units/UnitPartHead;->mRace:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "c"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v9, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartChest:Lcom/droidhen/fortconquer/units/UnitPartChest;

    iget v14, v14, Lcom/droidhen/fortconquer/units/UnitPartChest;->mRace:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "l"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v9, Lcom/droidhen/fortconquer/units/Unit;->mUnitPartLimbs:Lcom/droidhen/fortconquer/units/UnitPartLimbs;

    iget v14, v14, Lcom/droidhen/fortconquer/units/UnitPartLimbs;->mRace:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "q"

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9}, Lcom/droidhen/fortconquer/units/Unit;->getQuality()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0
.end method
