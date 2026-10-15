.class final enum Lcom/moreexchange/command/Command$PostType;
.super Ljava/lang/Enum;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/moreexchange/command/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PostType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/moreexchange/command/Command$PostType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLICK:Lcom/moreexchange/command/Command$PostType;

.field private static final synthetic ENUM$VALUES:[Lcom/moreexchange/command/Command$PostType;

.field public static final enum INSTALL:Lcom/moreexchange/command/Command$PostType;

.field public static final enum SHOW:Lcom/moreexchange/command/Command$PostType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 42
    new-instance v0, Lcom/moreexchange/command/Command$PostType;

    const-string v1, "SHOW"

    invoke-direct {v0, v1, v2}, Lcom/moreexchange/command/Command$PostType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moreexchange/command/Command$PostType;->SHOW:Lcom/moreexchange/command/Command$PostType;

    new-instance v0, Lcom/moreexchange/command/Command$PostType;

    const-string v1, "CLICK"

    invoke-direct {v0, v1, v3}, Lcom/moreexchange/command/Command$PostType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moreexchange/command/Command$PostType;->CLICK:Lcom/moreexchange/command/Command$PostType;

    new-instance v0, Lcom/moreexchange/command/Command$PostType;

    const-string v1, "INSTALL"

    invoke-direct {v0, v1, v4}, Lcom/moreexchange/command/Command$PostType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moreexchange/command/Command$PostType;->INSTALL:Lcom/moreexchange/command/Command$PostType;

    .line 41
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/moreexchange/command/Command$PostType;

    sget-object v1, Lcom/moreexchange/command/Command$PostType;->SHOW:Lcom/moreexchange/command/Command$PostType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/moreexchange/command/Command$PostType;->CLICK:Lcom/moreexchange/command/Command$PostType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/moreexchange/command/Command$PostType;->INSTALL:Lcom/moreexchange/command/Command$PostType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/moreexchange/command/Command$PostType;->ENUM$VALUES:[Lcom/moreexchange/command/Command$PostType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moreexchange/command/Command$PostType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/moreexchange/command/Command$PostType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/moreexchange/command/Command$PostType;

    return-object v0
.end method

.method public static values()[Lcom/moreexchange/command/Command$PostType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/moreexchange/command/Command$PostType;->ENUM$VALUES:[Lcom/moreexchange/command/Command$PostType;

    array-length v1, v0

    new-array v2, v1, [Lcom/moreexchange/command/Command$PostType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
