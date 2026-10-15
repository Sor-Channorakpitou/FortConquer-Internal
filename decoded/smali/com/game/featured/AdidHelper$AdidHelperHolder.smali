.class Lcom/game/featured/AdidHelper$AdidHelperHolder;
.super Ljava/lang/Object;
.source "AdidHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/featured/AdidHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdidHelperHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/game/featured/AdidHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/game/featured/AdidHelper;

    invoke-direct {v0}, Lcom/game/featured/AdidHelper;-><init>()V

    sput-object v0, Lcom/game/featured/AdidHelper$AdidHelperHolder;->INSTANCE:Lcom/game/featured/AdidHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
