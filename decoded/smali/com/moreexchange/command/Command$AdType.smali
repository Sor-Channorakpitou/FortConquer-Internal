.class public final enum Lcom/moreexchange/command/Command$AdType;
.super Ljava/lang/Enum;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moreexchange/command/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/moreexchange/command/Command$AdType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/moreexchange/command/Command$AdType;

.field public static final enum INTERSTITIAL:Lcom/moreexchange/command/Command$AdType;

.field public static final enum MORE:Lcom/moreexchange/command/Command$AdType;

.field public static final enum NOTIFICATION:Lcom/moreexchange/command/Command$AdType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    new-instance v0, Lcom/moreexchange/command/Command$AdType;

    const-string v1, "MORE"

    invoke-direct {v0, v1, v2}, Lcom/moreexchange/command/Command$AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moreexchange/command/Command$AdType;->MORE:Lcom/moreexchange/command/Command$AdType;

    new-instance v0, Lcom/moreexchange/command/Command$AdType;

    const-string v1, "INTERSTITIAL"

    invoke-direct {v0, v1, v3}, Lcom/moreexchange/command/Command$AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moreexchange/command/Command$AdType;->INTERSTITIAL:Lcom/moreexchange/command/Command$AdType;

    new-instance v0, Lcom/moreexchange/command/Command$AdType;

    const-string v1, "NOTIFICATION"

    invoke-direct {v0, v1, v4}, Lcom/moreexchange/command/Command$AdType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moreexchange/command/Command$AdType;->NOTIFICATION:Lcom/moreexchange/command/Command$AdType;

    .line 45
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/moreexchange/command/Command$AdType;

    sget-object v1, Lcom/moreexchange/command/Command$AdType;->MORE:Lcom/moreexchange/command/Command$AdType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/moreexchange/command/Command$AdType;->INTERSTITIAL:Lcom/moreexchange/command/Command$AdType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/moreexchange/command/Command$AdType;->NOTIFICATION:Lcom/moreexchange/command/Command$AdType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/moreexchange/command/Command$AdType;->ENUM$VALUES:[Lcom/moreexchange/command/Command$AdType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moreexchange/command/Command$AdType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/moreexchange/command/Command$AdType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/moreexchange/command/Command$AdType;

    return-object v0
.end method

.method public static values()[Lcom/moreexchange/command/Command$AdType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/moreexchange/command/Command$AdType;->ENUM$VALUES:[Lcom/moreexchange/command/Command$AdType;

    array-length v1, v0

    new-array v2, v1, [Lcom/moreexchange/command/Command$AdType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
