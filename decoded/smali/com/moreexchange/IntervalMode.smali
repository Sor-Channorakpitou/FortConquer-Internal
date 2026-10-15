.class public final enum Lcom/moreexchange/IntervalMode;
.super Ljava/lang/Enum;
.source "IntervalMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/moreexchange/IntervalMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/moreexchange/IntervalMode;

.field public static final enum Normal:Lcom/moreexchange/IntervalMode;

.field public static final enum Purchased:Lcom/moreexchange/IntervalMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/moreexchange/IntervalMode;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v2}, Lcom/moreexchange/IntervalMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moreexchange/IntervalMode;->Normal:Lcom/moreexchange/IntervalMode;

    new-instance v0, Lcom/moreexchange/IntervalMode;

    const-string v1, "Purchased"

    invoke-direct {v0, v1, v3}, Lcom/moreexchange/IntervalMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/moreexchange/IntervalMode;->Purchased:Lcom/moreexchange/IntervalMode;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/moreexchange/IntervalMode;

    sget-object v1, Lcom/moreexchange/IntervalMode;->Normal:Lcom/moreexchange/IntervalMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/moreexchange/IntervalMode;->Purchased:Lcom/moreexchange/IntervalMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/moreexchange/IntervalMode;->ENUM$VALUES:[Lcom/moreexchange/IntervalMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/moreexchange/IntervalMode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/moreexchange/IntervalMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/moreexchange/IntervalMode;

    return-object v0
.end method

.method public static values()[Lcom/moreexchange/IntervalMode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/moreexchange/IntervalMode;->ENUM$VALUES:[Lcom/moreexchange/IntervalMode;

    array-length v1, v0

    new-array v2, v1, [Lcom/moreexchange/IntervalMode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
