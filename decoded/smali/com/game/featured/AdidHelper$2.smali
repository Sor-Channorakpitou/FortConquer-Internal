.class Lcom/game/featured/AdidHelper$2;
.super Ljava/lang/Object;
.source "AdidHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/featured/AdidHelper;->notifyObservers(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/featured/AdidHelper;

.field private final synthetic val$adid:Ljava/lang/String;

.field private final synthetic val$finalObserver:Lcom/game/featured/AdidRetrievedObserver;

.field private final synthetic val$isValid:Z


# direct methods
.method constructor <init>(Lcom/game/featured/AdidHelper;Lcom/game/featured/AdidRetrievedObserver;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/featured/AdidHelper$2;->this$0:Lcom/game/featured/AdidHelper;

    iput-object p2, p0, Lcom/game/featured/AdidHelper$2;->val$finalObserver:Lcom/game/featured/AdidRetrievedObserver;

    iput-object p3, p0, Lcom/game/featured/AdidHelper$2;->val$adid:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/game/featured/AdidHelper$2;->val$isValid:Z

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/game/featured/AdidHelper$2;->val$finalObserver:Lcom/game/featured/AdidRetrievedObserver;

    iget-object v1, p0, Lcom/game/featured/AdidHelper$2;->val$adid:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/game/featured/AdidHelper$2;->val$isValid:Z

    invoke-interface {v0, v1, v2}, Lcom/game/featured/AdidRetrievedObserver;->onAdidRetrieved(Ljava/lang/String;Z)V

    .line 63
    return-void
.end method
