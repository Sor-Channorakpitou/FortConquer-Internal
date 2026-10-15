.class public final enum Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;
.super Ljava/lang/Enum;
.source "DiscountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/kits/DiscountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DiscountType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DST_FREE:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

.field public static final enum DST_PURCHASE:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

.field private static final synthetic ENUM$VALUES:[Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

.field public static final enum _DST_COUNT_:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    const-string v1, "DST_PURCHASE"

    invoke-direct {v0, v1, v2}, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->DST_PURCHASE:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    .line 36
    new-instance v0, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    const-string v1, "DST_FREE"

    invoke-direct {v0, v1, v3}, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->DST_FREE:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    .line 37
    new-instance v0, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    const-string v1, "_DST_COUNT_"

    invoke-direct {v0, v1, v4}, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->_DST_COUNT_:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    .line 34
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    sget-object v1, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->DST_PURCHASE:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->DST_FREE:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->_DST_COUNT_:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->ENUM$VALUES:[Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    return-object v0
.end method

.method public static values()[Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->ENUM$VALUES:[Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    array-length v1, v0

    new-array v2, v1, [Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
