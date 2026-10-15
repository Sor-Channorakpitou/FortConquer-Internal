.class public Lcom/droidhen/fortconquer/kits/DiscountManager;
.super Ljava/lang/Object;
.source "DiscountManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;,
        Lcom/droidhen/fortconquer/kits/DiscountManager$CrystalDiscountManagerHolder;,
        Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;,
        Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;
    }
.end annotation


# static fields
.field public static final METHOD_DISCOUNT:[Ljava/lang/String;

.field public static final REPORT_URL:Ljava/lang/String; = "http://fortconquer.droidhen.com/FortConquer/game/Main.php"

.field private static final SUCCESS:I

.field public static final _SAVE_PREFIX:[Ljava/lang/String;


# instance fields
.field private _BitmapURL:Ljava/lang/String;

.field private _end:J

.field private _needReloadPic:Z

.field private _now:J

.field private _nowLocal:J

.field private _rate:I

.field private _start:J

.field public bPostShowed:Z

.field private final httpMethod:Ljava/lang/String;

.field public loadPicSuccess:Z

.field public pic:Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;

.field private final transient pool:Ljava/util/concurrent/ExecutorService;

.field private final savePrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "discountSell"

    aput-object v1, v0, v2

    const-string v1, "getTapjoyData"

    aput-object v1, v0, v3

    sput-object v0, Lcom/droidhen/fortconquer/kits/DiscountManager;->METHOD_DISCOUNT:[Ljava/lang/String;

    .line 43
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "discount_"

    aput-object v1, v0, v2

    const-string v1, "free_crystal_"

    aput-object v1, v0, v3

    sput-object v0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_SAVE_PREFIX:[Ljava/lang/String;

    .line 47
    return-void
.end method

.method protected constructor <init>(Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;)V
    .locals 4
    .param p1, "type"    # Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-wide v2, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_start:J

    iput-wide v2, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_end:J

    iput-wide v2, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_now:J

    .line 49
    iput v1, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_rate:I

    .line 50
    iput-object v0, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_BitmapURL:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->pic:Lcom/droidhen/fortconquer/kits/DiscountManager$BitmapTextureAtlasSource;

    .line 52
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_needReloadPic:Z

    .line 53
    iput-boolean v1, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->loadPicSuccess:Z

    .line 54
    iput-boolean v1, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->bPostShowed:Z

    .line 137
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->pool:Ljava/util/concurrent/ExecutorService;

    .line 75
    sget-object v0, Lcom/droidhen/fortconquer/kits/DiscountManager;->METHOD_DISCOUNT:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->httpMethod:Ljava/lang/String;

    .line 76
    sget-object v0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_SAVE_PREFIX:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->savePrefix:Ljava/lang/String;

    .line 77
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
    .line 117
    invoke-static {p0}, Lcom/droidhen/fortconquer/kits/DiscountManager;->toParamStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/droidhen/fortconquer/kits/DiscountManager;J)V
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_start:J

    return-void
.end method

.method static synthetic access$10(Lcom/droidhen/fortconquer/kits/DiscountManager;)J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_now:J

    return-wide v0
.end method

.method static synthetic access$11(Lcom/droidhen/fortconquer/kits/DiscountManager;)I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_rate:I

    return v0
.end method

.method static synthetic access$12(Lcom/droidhen/fortconquer/kits/DiscountManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_BitmapURL:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$13(Lcom/droidhen/fortconquer/kits/DiscountManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_BitmapURL:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$14(Lcom/droidhen/fortconquer/kits/DiscountManager;Z)V
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_needReloadPic:Z

    return-void
.end method

.method static synthetic access$15(Lcom/droidhen/fortconquer/kits/DiscountManager;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_needReloadPic:Z

    return v0
.end method

.method static synthetic access$2(Lcom/droidhen/fortconquer/kits/DiscountManager;J)V
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_end:J

    return-void
.end method

.method static synthetic access$3(Lcom/droidhen/fortconquer/kits/DiscountManager;J)V
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_now:J

    return-void
.end method

.method static synthetic access$4(Lcom/droidhen/fortconquer/kits/DiscountManager;I)V
    .locals 0

    .prologue
    .line 49
    iput p1, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_rate:I

    return-void
.end method

.method static synthetic access$5(Lcom/droidhen/fortconquer/kits/DiscountManager;J)V
    .locals 1

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_nowLocal:J

    return-void
.end method

.method static synthetic access$6(Lcom/droidhen/fortconquer/kits/DiscountManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->savePrefix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7(Lcom/droidhen/fortconquer/kits/DiscountManager;)J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_start:J

    return-wide v0
.end method

.method static synthetic access$8(Lcom/droidhen/fortconquer/kits/DiscountManager;)J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_end:J

    return-wide v0
.end method

.method static synthetic access$9(Lcom/droidhen/fortconquer/kits/DiscountManager;)J
    .locals 2

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_nowLocal:J

    return-wide v0
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
    .line 134
    .local p1, "requestParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->pool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;

    invoke-direct {v1, p0, p1}, Lcom/droidhen/fortconquer/kits/DiscountManager$NetworkService;-><init>(Lcom/droidhen/fortconquer/kits/DiscountManager;Ljava/util/Map;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 135
    return-void
.end method

.method public static clean()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 69
    sget-object v3, Lcom/droidhen/fortconquer/kits/DiscountManager$CrystalDiscountManagerHolder;->INSTANCE:[Lcom/droidhen/fortconquer/kits/DiscountManager;

    array-length v4, v3

    move v1, v2

    .local v0, "instance":Lcom/droidhen/fortconquer/kits/DiscountManager;
    :goto_0
    if-lt v1, v4, :cond_0

    .line 72
    return-void

    .line 69
    :cond_0
    aget-object v0, v3, v1

    .line 70
    iput-boolean v2, v0, Lcom/droidhen/fortconquer/kits/DiscountManager;->bPostShowed:Z

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static getInstance(Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;)Lcom/droidhen/fortconquer/kits/DiscountManager;
    .locals 2
    .param p0, "type"    # Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    .prologue
    .line 65
    sget-object v0, Lcom/droidhen/fortconquer/kits/DiscountManager$CrystalDiscountManagerHolder;->INSTANCE:[Lcom/droidhen/fortconquer/kits/DiscountManager;

    invoke-virtual {p0}, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

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
    .line 118
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 119
    .local v3, "sb":Ljava/lang/StringBuffer;
    const/16 v0, 0x3f

    .line 120
    .local v0, "head":C
    if-eqz p0, :cond_0

    .line 121
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 122
    .local v2, "param":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 130
    .end local v2    # "param":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 122
    .restart local v2    # "param":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 123
    .local v1, "p":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 124
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v4, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    const/16 v4, 0x3d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 126
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v6, "UTF-8"

    invoke-static {v4, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    const/16 v0, 0x26

    goto :goto_0
.end method


# virtual methods
.method public getDiscountRate()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_rate:I

    return v0
.end method

.method public inDiscountTime()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 80
    iget v3, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_rate:I

    if-eqz v3, :cond_0

    iget-wide v4, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_now:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    .line 88
    :cond_0
    :goto_0
    return v2

    .line 84
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_nowLocal:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x3e8

    div-long v0, v4, v6

    .line 85
    .local v0, "delta":J
    iget-wide v4, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_now:J

    add-long/2addr v4, v0

    iget-wide v6, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_start:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_0

    iget-wide v4, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_now:J

    add-long/2addr v4, v0

    iget-wide v6, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_end:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 86
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public isPostShowed()Z
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->bPostShowed:Z

    return v0
.end method

.method public setPostShowed()V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->bPostShowed:Z

    .line 97
    return-void
.end method

.method public updateDiscountRate()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 104
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->savePrefix:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_start"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6, v7}, Lcom/droidhen/fortconquer/CCPrefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_start:J

    .line 105
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->savePrefix:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6, v7}, Lcom/droidhen/fortconquer/CCPrefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_end:J

    .line 106
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->savePrefix:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_local"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6, v7}, Lcom/droidhen/fortconquer/CCPrefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_nowLocal:J

    .line 107
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->savePrefix:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_now"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v6, v7}, Lcom/droidhen/fortconquer/CCPrefs;->getLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_now:J

    .line 108
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getActivity()Lcom/droidhen/fortconquer/GameActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->savePrefix:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "_rate"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/droidhen/fortconquer/CCPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->_rate:I

    .line 110
    invoke-static {}, Lcom/droidhen/fortconquer/AppContext;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, "deviceID":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 112
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "function"

    iget-object v3, p0, Lcom/droidhen/fortconquer/kits/DiscountManager;->httpMethod:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const-string v2, "deviceid"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-direct {p0, v1}, Lcom/droidhen/fortconquer/kits/DiscountManager;->addRequest(Ljava/util/Map;)V

    .line 115
    return-void
.end method
