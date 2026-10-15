.class public final enum Lcom/moreexchange/util/PublisherType;
.super Ljava/lang/Enum;
.source "PublisherType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/moreexchange/util/PublisherType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Amazon:Lcom/moreexchange/util/PublisherType;

.field public static final BASE_URL:Ljava/lang/String; = "http://moreapps.droidhen.com/games/"

.field public static final BASE_URL_FOR_IMG:Ljava/lang/String; = "http://static.droidhen.com/games/"

.field public static CURRENT:Lcom/moreexchange/util/PublisherType;

.field private static final synthetic ENUM$VALUES:[Lcom/moreexchange/util/PublisherType;

.field public static final enum Google:Lcom/moreexchange/util/PublisherType;


# instance fields
.field private _morePage:Ljava/lang/String;

.field private _promptPage:Ljava/lang/String;

.field private _sharePrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/moreexchange/util/PublisherType;

    const-string v1, "Google"

    const-string v3, "more.php"

    const-string v4, "prompt2.php"

    const-string v5, "https://play.google.com/store/apps/details?id="

    invoke-direct/range {v0 .. v5}, Lcom/moreexchange/util/PublisherType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/moreexchange/util/PublisherType;->Google:Lcom/moreexchange/util/PublisherType;

    .line 5
    new-instance v3, Lcom/moreexchange/util/PublisherType;

    const-string v4, "Amazon"

    const-string v6, "more-amazon.php"

    const-string v7, "prompt-amazon.php"

    .line 6
    const-string v8, "http://www.amazon.com/gp/mas/dl/android?p="

    move v5, v9

    invoke-direct/range {v3 .. v8}, Lcom/moreexchange/util/PublisherType;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/moreexchange/util/PublisherType;->Amazon:Lcom/moreexchange/util/PublisherType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/moreexchange/util/PublisherType;

    sget-object v1, Lcom/moreexchange/util/PublisherType;->Google:Lcom/moreexchange/util/PublisherType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/moreexchange/util/PublisherType;->Amazon:Lcom/moreexchange/util/PublisherType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/moreexchange/util/PublisherType;->ENUM$VALUES:[Lcom/moreexchange/util/PublisherType;

    .line 33
    sget-object v0, Lcom/moreexchange/util/PublisherType;->Google:Lcom/moreexchange/util/PublisherType;

    sput-object v0, Lcom/moreexchange/util/PublisherType;->CURRENT:Lcom/moreexchange/util/PublisherType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3, "morePage"    # Ljava/lang/String;
    .param p4, "promptPage"    # Ljava/lang/String;
    .param p5, "sharePrefix"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput-object p3, p0, Lcom/moreexchange/util/PublisherType;->_morePage:Ljava/lang/String;

    .line 17
    iput-object p4, p0, Lcom/moreexchange/util/PublisherType;->_promptPage:Ljava/lang/String;

    .line 18
    iput-object p5, p0, Lcom/moreexchange/util/PublisherType;->_sharePrefix:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moreexchange/util/PublisherType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/moreexchange/util/PublisherType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/moreexchange/util/PublisherType;

    return-object v0
.end method

.method public static values()[Lcom/moreexchange/util/PublisherType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/moreexchange/util/PublisherType;->ENUM$VALUES:[Lcom/moreexchange/util/PublisherType;

    array-length v1, v0

    new-array v2, v1, [Lcom/moreexchange/util/PublisherType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getMoreUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://moreapps.droidhen.com/games/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/moreexchange/util/PublisherType;->_morePage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPromptUrl()Ljava/lang/String;
    .locals 2

    .prologue
    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "http://moreapps.droidhen.com/games/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/moreexchange/util/PublisherType;->_promptPage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSharePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/moreexchange/util/PublisherType;->_sharePrefix:Ljava/lang/String;

    return-object v0
.end method
