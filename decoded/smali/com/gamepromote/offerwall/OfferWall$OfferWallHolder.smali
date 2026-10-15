.class Lcom/gamepromote/offerwall/OfferWall$OfferWallHolder;
.super Ljava/lang/Object;
.source "OfferWall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gamepromote/offerwall/OfferWall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OfferWallHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/gamepromote/offerwall/OfferWall;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Lcom/gamepromote/offerwall/OfferWall;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gamepromote/offerwall/OfferWall;-><init>(Lcom/gamepromote/offerwall/OfferWall;)V

    sput-object v0, Lcom/gamepromote/offerwall/OfferWall$OfferWallHolder;->INSTANCE:Lcom/gamepromote/offerwall/OfferWall;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
