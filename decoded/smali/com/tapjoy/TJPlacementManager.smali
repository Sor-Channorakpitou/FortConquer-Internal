.class public Lcom/tapjoy/TJPlacementManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:I

.field private static b:I

.field private static final c:Lcom/tapjoy/internal/be;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput v0, Lcom/tapjoy/TJPlacementManager;->a:I

    .line 18
    const/4 v0, 0x3

    sput v0, Lcom/tapjoy/TJPlacementManager;->b:I

    .line 20
    invoke-static {}, Lcom/tapjoy/internal/be;->a()Lcom/tapjoy/internal/be;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/TJPlacementManager;->c:Lcom/tapjoy/internal/be;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static canCachePlacement()Z
    .locals 2

    .prologue
    .line 56
    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->getPlacementCacheCount()I

    move-result v0

    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->getPlacementCacheLimit()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static decrementPlacementCacheCount()V
    .locals 1

    .prologue
    .line 74
    sget v0, Lcom/tapjoy/TJPlacementManager;->a:I

    add-int/lit8 v0, v0, -0x1

    .line 75
    sput v0, Lcom/tapjoy/TJPlacementManager;->a:I

    if-gez v0, :cond_0

    .line 76
    const/4 v0, 0x0

    sput v0, Lcom/tapjoy/TJPlacementManager;->a:I

    .line 78
    :cond_0
    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->printPlacementCacheInformation()V

    .line 79
    return-void
.end method

.method public static get(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;
    .locals 2
    .param p0, "guid"    # Ljava/lang/String;

    .prologue
    .line 23
    sget-object v1, Lcom/tapjoy/TJPlacementManager;->c:Lcom/tapjoy/internal/be;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/tapjoy/TJPlacementManager;->c:Lcom/tapjoy/internal/be;

    invoke-virtual {v0, p0}, Lcom/tapjoy/internal/be;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/TJPlacement;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getPlacementCacheCount()I
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/tapjoy/TJPlacementManager;->a:I

    return v0
.end method

.method public static getPlacementCacheLimit()I
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/tapjoy/TJPlacementManager;->b:I

    return v0
.end method

.method public static incrementPlacementCacheCount()V
    .locals 2

    .prologue
    .line 63
    sget v0, Lcom/tapjoy/TJPlacementManager;->a:I

    add-int/lit8 v0, v0, 0x1

    .line 64
    sput v0, Lcom/tapjoy/TJPlacementManager;->a:I

    sget v1, Lcom/tapjoy/TJPlacementManager;->b:I

    if-le v0, v1, :cond_0

    .line 65
    sget v0, Lcom/tapjoy/TJPlacementManager;->b:I

    sput v0, Lcom/tapjoy/TJPlacementManager;->a:I

    .line 67
    :cond_0
    invoke-static {}, Lcom/tapjoy/TJPlacementManager;->printPlacementCacheInformation()V

    .line 68
    return-void
.end method

.method public static printPlacementCacheInformation()V
    .locals 3

    .prologue
    .line 85
    const-string v0, "TJPlacementManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Space available in placement cache: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/tapjoy/TJPlacementManager;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/tapjoy/TJPlacementManager;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tapjoy/TapjoyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public static put(Ljava/lang/String;Lcom/tapjoy/TJPlacement;)V
    .locals 2
    .param p0, "guid"    # Ljava/lang/String;
    .param p1, "placement"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 29
    sget-object v1, Lcom/tapjoy/TJPlacementManager;->c:Lcom/tapjoy/internal/be;

    monitor-enter v1

    .line 30
    :try_start_0
    sget-object v0, Lcom/tapjoy/TJPlacementManager;->c:Lcom/tapjoy/internal/be;

    invoke-virtual {v0, p0, p1}, Lcom/tapjoy/internal/be;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static setPlacementCacheLimit(I)V
    .locals 0
    .param p0, "limit"    # I

    .prologue
    .line 38
    sput p0, Lcom/tapjoy/TJPlacementManager;->b:I

    .line 39
    return-void
.end method
