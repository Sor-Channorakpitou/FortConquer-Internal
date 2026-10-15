.class Lcom/game/videoad/TapjoyHelper$TapjoyHelperHolder;
.super Ljava/lang/Object;
.source "TapjoyHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/videoad/TapjoyHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TapjoyHelperHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/game/videoad/TapjoyHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    new-instance v0, Lcom/game/videoad/TapjoyHelper;

    invoke-direct {v0}, Lcom/game/videoad/TapjoyHelper;-><init>()V

    sput-object v0, Lcom/game/videoad/TapjoyHelper$TapjoyHelperHolder;->INSTANCE:Lcom/game/videoad/TapjoyHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
