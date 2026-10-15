.class public Lcom/tapjoy/internal/TapjoyNativeAPITesting;
.super Lcom/tapjoy/internal/ea;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/tapjoy/internal/ea;-><init>()V

    return-void
.end method

.method public static disable()V
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/tapjoy/internal/ea;->a:Lcom/tapjoy/internal/ea;

    sput-object v0, Lcom/tapjoy/internal/ea;->b:Lcom/tapjoy/internal/ea;

    .line 19
    return-void
.end method

.method public static enable(Lcom/tapjoy/internal/TapjoyNativeAPITesting;)V
    .locals 0
    .param p0, "testingAPI"    # Lcom/tapjoy/internal/TapjoyNativeAPITesting;

    .prologue
    .line 11
    .line 12
    sput-object p0, Lcom/tapjoy/internal/ea;->b:Lcom/tapjoy/internal/ea;

    .line 13
    return-void
.end method


# virtual methods
.method public createPlacement(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "placementName"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/tapjoy/TJPlacementListener;

    .prologue
    .line 24
    new-instance v0, Lcom/tapjoy/TJPlacement;

    invoke-direct {v0, p1, p2, p3}, Lcom/tapjoy/TJPlacement;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)V

    return-object v0
.end method
