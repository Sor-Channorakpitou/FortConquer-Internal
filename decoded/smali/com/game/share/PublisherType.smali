.class public final enum Lcom/game/share/PublisherType;
.super Ljava/lang/Enum;
.source "PublisherType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/game/share/PublisherType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Amazon:Lcom/game/share/PublisherType;

.field public static CURRENT:Lcom/game/share/PublisherType;

.field private static final synthetic ENUM$VALUES:[Lcom/game/share/PublisherType;

.field public static final enum Google:Lcom/game/share/PublisherType;


# instance fields
.field private _sharePrefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/game/share/PublisherType;

    const-string v1, "Google"

    const-string v2, "https://play.google.com/store/apps/details?id="

    invoke-direct {v0, v1, v3, v2}, Lcom/game/share/PublisherType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/game/share/PublisherType;->Google:Lcom/game/share/PublisherType;

    .line 5
    new-instance v0, Lcom/game/share/PublisherType;

    const-string v1, "Amazon"

    const-string v2, "http://www.amazon.com/gp/mas/dl/android?p="

    invoke-direct {v0, v1, v4, v2}, Lcom/game/share/PublisherType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/game/share/PublisherType;->Amazon:Lcom/game/share/PublisherType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/game/share/PublisherType;

    sget-object v1, Lcom/game/share/PublisherType;->Google:Lcom/game/share/PublisherType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/game/share/PublisherType;->Amazon:Lcom/game/share/PublisherType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/game/share/PublisherType;->ENUM$VALUES:[Lcom/game/share/PublisherType;

    .line 18
    sget-object v0, Lcom/game/share/PublisherType;->Google:Lcom/game/share/PublisherType;

    sput-object v0, Lcom/game/share/PublisherType;->CURRENT:Lcom/game/share/PublisherType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "sharePrefix"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/game/share/PublisherType;->_sharePrefix:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/game/share/PublisherType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/game/share/PublisherType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/game/share/PublisherType;

    return-object v0
.end method

.method public static values()[Lcom/game/share/PublisherType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/game/share/PublisherType;->ENUM$VALUES:[Lcom/game/share/PublisherType;

    array-length v1, v0

    new-array v2, v1, [Lcom/game/share/PublisherType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public getSharePrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/game/share/PublisherType;->_sharePrefix:Ljava/lang/String;

    return-object v0
.end method
