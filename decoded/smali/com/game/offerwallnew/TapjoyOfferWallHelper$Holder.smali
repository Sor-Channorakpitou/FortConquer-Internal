.class Lcom/game/offerwallnew/TapjoyOfferWallHelper$Holder;
.super Ljava/lang/Object;
.source "TapjoyOfferWallHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/offerwallnew/TapjoyOfferWallHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/game/offerwallnew/TapjoyOfferWallHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    new-instance v0, Lcom/game/offerwallnew/TapjoyOfferWallHelper;

    invoke-direct {v0}, Lcom/game/offerwallnew/TapjoyOfferWallHelper;-><init>()V

    sput-object v0, Lcom/game/offerwallnew/TapjoyOfferWallHelper$Holder;->INSTANCE:Lcom/game/offerwallnew/TapjoyOfferWallHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
