.class Lcom/game/videoad/VideoAdManager$VideoAdManagerHolder;
.super Ljava/lang/Object;
.source "VideoAdManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/game/videoad/VideoAdManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoAdManagerHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/game/videoad/VideoAdManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 12
    new-instance v0, Lcom/game/videoad/VideoAdManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/game/videoad/VideoAdManager;-><init>(Lcom/game/videoad/VideoAdManager;)V

    sput-object v0, Lcom/game/videoad/VideoAdManager$VideoAdManagerHolder;->INSTANCE:Lcom/game/videoad/VideoAdManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
