.class final enum Lcom/game/admob/AdBannerHelper$AdBannerLayout;
.super Ljava/lang/Enum;
.source "AdBannerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/admob/AdBannerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "AdBannerLayout"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/game/admob/AdBannerHelper$AdBannerLayout;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BOTTOM:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

.field public static final enum BOTTOM_LEFT:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

.field public static final enum BOTTOM_RIGHT:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

.field private static final synthetic ENUM$VALUES:[Lcom/game/admob/AdBannerHelper$AdBannerLayout;

.field public static final enum LEFT:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

.field public static final enum RIGHT:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

.field public static final enum TOP:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

.field public static final enum TOP_LEFT:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

.field public static final enum TOP_RIGHT:Lcom/game/admob/AdBannerHelper$AdBannerLayout;


# instance fields
.field private _type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 23
    new-instance v0, Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    const-string v1, "TOP"

    const-string v2, "top"

    invoke-direct {v0, v1, v4, v2}, Lcom/game/admob/AdBannerHelper$AdBannerLayout;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->TOP:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    .line 24
    new-instance v0, Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    const-string v1, "BOTTOM"

    const-string v2, "bottom"

    invoke-direct {v0, v1, v5, v2}, Lcom/game/admob/AdBannerHelper$AdBannerLayout;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->BOTTOM:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    .line 25
    new-instance v0, Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    const-string v1, "LEFT"

    const-string v2, "left"

    invoke-direct {v0, v1, v6, v2}, Lcom/game/admob/AdBannerHelper$AdBannerLayout;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->LEFT:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    .line 26
    new-instance v0, Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    const-string v1, "RIGHT"

    const-string v2, "right"

    invoke-direct {v0, v1, v7, v2}, Lcom/game/admob/AdBannerHelper$AdBannerLayout;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->RIGHT:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    .line 27
    new-instance v0, Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    const-string v1, "TOP_LEFT"

    const-string v2, "top_left"

    invoke-direct {v0, v1, v8, v2}, Lcom/game/admob/AdBannerHelper$AdBannerLayout;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->TOP_LEFT:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    .line 28
    new-instance v0, Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    const-string v1, "TOP_RIGHT"

    const/4 v2, 0x5

    const-string v3, "top_right"

    invoke-direct {v0, v1, v2, v3}, Lcom/game/admob/AdBannerHelper$AdBannerLayout;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->TOP_RIGHT:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    .line 29
    new-instance v0, Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    const-string v1, "BOTTOM_LEFT"

    const/4 v2, 0x6

    const-string v3, "bottom_left"

    invoke-direct {v0, v1, v2, v3}, Lcom/game/admob/AdBannerHelper$AdBannerLayout;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->BOTTOM_LEFT:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    .line 30
    new-instance v0, Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v2, 0x7

    const-string v3, "bottom_right"

    invoke-direct {v0, v1, v2, v3}, Lcom/game/admob/AdBannerHelper$AdBannerLayout;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->BOTTOM_RIGHT:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    .line 22
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    sget-object v1, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->TOP:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    aput-object v1, v0, v4

    sget-object v1, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->BOTTOM:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    aput-object v1, v0, v5

    sget-object v1, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->LEFT:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    aput-object v1, v0, v6

    sget-object v1, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->RIGHT:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    aput-object v1, v0, v7

    sget-object v1, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->TOP_LEFT:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->TOP_RIGHT:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->BOTTOM_LEFT:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->BOTTOM_RIGHT:Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    aput-object v2, v0, v1

    sput-object v0, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->ENUM$VALUES:[Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->_type:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/game/admob/AdBannerHelper$AdBannerLayout;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    return-object v0
.end method

.method public static values()[Lcom/game/admob/AdBannerHelper$AdBannerLayout;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->ENUM$VALUES:[Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    array-length v1, v0

    new-array v2, v1, [Lcom/game/admob/AdBannerHelper$AdBannerLayout;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/game/admob/AdBannerHelper$AdBannerLayout;->_type:Ljava/lang/String;

    return-object v0
.end method
