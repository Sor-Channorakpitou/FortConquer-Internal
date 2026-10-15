.class public abstract Lcom/tapjoy/internal/dl$a;
.super Lcom/tapjoy/internal/de$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/internal/dl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/tapjoy/internal/dh;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/tapjoy/internal/de$a;-><init>()V

    .line 131
    sget-object v0, Lcom/tapjoy/internal/dh;->a:Lcom/tapjoy/internal/dh;

    iput-object v0, p0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/dh;

    .line 87
    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/tapjoy/internal/de$a;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/tapjoy/internal/dl$a;->b()Lcom/tapjoy/internal/dl$a;

    move-result-object v0

    return-object v0
.end method

.method public b()Lcom/tapjoy/internal/dl$a;
    .locals 2

    .prologue
    .line 100
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This is supposed to be overridden by subclasses."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Lcom/tapjoy/internal/dh;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/tapjoy/internal/dl$a;->a:Lcom/tapjoy/internal/dh;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/tapjoy/internal/dl$a;->b()Lcom/tapjoy/internal/dl$a;

    move-result-object v0

    return-object v0
.end method
