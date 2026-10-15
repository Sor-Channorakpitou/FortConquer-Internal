.class Lcom/game/featured/FeaturedHelper$FeaturedHelperHolder;
.super Ljava/lang/Object;
.source "FeaturedHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/featured/FeaturedHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FeaturedHelperHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/game/featured/FeaturedHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    new-instance v0, Lcom/game/featured/FeaturedHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/game/featured/FeaturedHelper;-><init>(Lcom/game/featured/FeaturedHelper;)V

    sput-object v0, Lcom/game/featured/FeaturedHelper$FeaturedHelperHolder;->INSTANCE:Lcom/game/featured/FeaturedHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
