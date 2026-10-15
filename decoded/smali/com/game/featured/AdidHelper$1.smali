.class Lcom/game/featured/AdidHelper$1;
.super Ljava/lang/Object;
.source "AdidHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/game/featured/AdidHelper;->retrieveAdid(Lcom/game/featured/AdidRetrievedObserver;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/game/featured/AdidHelper;

.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/game/featured/AdidHelper;Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/game/featured/AdidHelper$1;->this$0:Lcom/game/featured/AdidHelper;

    iput-object p2, p0, Lcom/game/featured/AdidHelper$1;->val$activity:Landroid/app/Activity;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 35
    const/4 v0, 0x0

    .line 36
    .local v0, "adInfo":Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    const/4 v3, 0x1

    .line 39
    .local v3, "isValid":Z
    :try_start_0
    iget-object v4, p0, Lcom/game/featured/AdidHelper$1;->val$activity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 46
    :goto_0
    const/4 v2, 0x0

    .line 47
    .local v2, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v3, :cond_0

    .line 48
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    .line 50
    :cond_0
    iget-object v4, p0, Lcom/game/featured/AdidHelper$1;->this$0:Lcom/game/featured/AdidHelper;

    invoke-static {v4, v2, v3}, Lcom/game/featured/AdidHelper;->access$0(Lcom/game/featured/AdidHelper;Ljava/lang/String;Z)V

    .line 51
    return-void

    .line 41
    .end local v2    # "id":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 42
    .local v1, "e":Ljava/lang/Throwable;
    const/4 v3, 0x0

    .line 43
    const-string v4, "AdidHelper"

    const-string v5, "retrieve adid failed"

    invoke-static {v4, v5, v1}, Lcom/game/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
