.class Lcom/droidhen/fortconquer/kits/DiscountManager$CrystalDiscountManagerHolder;
.super Ljava/lang/Object;
.source "DiscountManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/kits/DiscountManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CrystalDiscountManagerHolder"
.end annotation


# static fields
.field public static final INSTANCE:[Lcom/droidhen/fortconquer/kits/DiscountManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/droidhen/fortconquer/kits/DiscountManager;

    const/4 v1, 0x0

    .line 59
    new-instance v2, Lcom/droidhen/fortconquer/kits/DiscountManager;

    sget-object v3, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->DST_PURCHASE:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    invoke-direct {v2, v3}, Lcom/droidhen/fortconquer/kits/DiscountManager;-><init>(Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 60
    new-instance v2, Lcom/droidhen/fortconquer/kits/DiscountManager;

    sget-object v3, Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;->DST_FREE:Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;

    invoke-direct {v2, v3}, Lcom/droidhen/fortconquer/kits/DiscountManager;-><init>(Lcom/droidhen/fortconquer/kits/DiscountManager$DiscountType;)V

    aput-object v2, v0, v1

    .line 58
    sput-object v0, Lcom/droidhen/fortconquer/kits/DiscountManager$CrystalDiscountManagerHolder;->INSTANCE:[Lcom/droidhen/fortconquer/kits/DiscountManager;

    .line 61
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
