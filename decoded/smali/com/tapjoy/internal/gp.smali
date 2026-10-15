.class public final Lcom/tapjoy/internal/gp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Lcom/tapjoy/internal/bo;


# instance fields
.field public final a:Lcom/tapjoy/internal/gr;

.field private final c:Landroid/graphics/Point;

.field private final d:Landroid/graphics/Point;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/tapjoy/internal/gp$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gp$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gp;->b:Lcom/tapjoy/internal/bo;

    return-void
.end method

.method public constructor <init>(Lcom/tapjoy/internal/gr;Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/tapjoy/internal/gp;->a:Lcom/tapjoy/internal/gr;

    .line 19
    iput-object p2, p0, Lcom/tapjoy/internal/gp;->c:Landroid/graphics/Point;

    .line 20
    iput-object p3, p0, Lcom/tapjoy/internal/gp;->d:Landroid/graphics/Point;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/tapjoy/internal/gp;->a:Lcom/tapjoy/internal/gr;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/gp;->c:Landroid/graphics/Point;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/gp;->d:Landroid/graphics/Point;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/tapjoy/internal/gp;->c:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/tapjoy/internal/gp;->d:Landroid/graphics/Point;

    .line 32
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/gp;->c:Landroid/graphics/Point;

    goto :goto_0
.end method

.method public final c()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/tapjoy/internal/gp;->d:Landroid/graphics/Point;

    if-nez v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/tapjoy/internal/gp;->c:Landroid/graphics/Point;

    .line 39
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/tapjoy/internal/gp;->d:Landroid/graphics/Point;

    goto :goto_0
.end method
