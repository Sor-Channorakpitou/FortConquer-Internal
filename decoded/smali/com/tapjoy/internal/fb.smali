.class Lcom/tapjoy/internal/fb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/location/Location;

.field private c:Landroid/location/LocationManager;

.field private d:Lcom/tapjoy/internal/fa;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/tapjoy/internal/fb;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tapjoy/internal/fb;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/fb;->e:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/tapjoy/internal/fb;->c:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/fb;->d:Lcom/tapjoy/internal/fa;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/tapjoy/internal/fb;->c:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->d:Lcom/tapjoy/internal/fa;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 62
    :cond_0
    return-void

    .line 58
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Landroid/location/Location;
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tapjoy/internal/fb;->b:Landroid/location/Location;

    .line 67
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/tapjoy/internal/fb;->d:Lcom/tapjoy/internal/fa;

    if-eqz v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/tapjoy/internal/fb;->d:Lcom/tapjoy/internal/fa;

    invoke-virtual {v0}, Lcom/tapjoy/internal/fa;->a()Landroid/location/Location;

    move-result-object v0

    .line 72
    :cond_0
    return-object v0
.end method
