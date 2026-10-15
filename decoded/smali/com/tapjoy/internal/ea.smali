.class abstract Lcom/tapjoy/internal/ea;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Lcom/tapjoy/internal/ea;

.field static b:Lcom/tapjoy/internal/ea;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    new-instance v0, Lcom/tapjoy/internal/eb;

    invoke-direct {v0}, Lcom/tapjoy/internal/eb;-><init>()V

    .line 11
    sput-object v0, Lcom/tapjoy/internal/ea;->a:Lcom/tapjoy/internal/ea;

    sput-object v0, Lcom/tapjoy/internal/ea;->b:Lcom/tapjoy/internal/ea;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/tapjoy/internal/ea;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/tapjoy/internal/ea;->b:Lcom/tapjoy/internal/ea;

    return-object v0
.end method


# virtual methods
.method public abstract createPlacement(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)Ljava/lang/Object;
.end method
