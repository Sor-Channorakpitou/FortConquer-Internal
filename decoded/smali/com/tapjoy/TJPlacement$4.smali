.class final Lcom/tapjoy/TJPlacement$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJPlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJPlacement;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJPlacement;)V
    .locals 0

    .prologue
    .line 360
    iput-object p1, p0, Lcom/tapjoy/TJPlacement$4;->a:Lcom/tapjoy/TJPlacement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/tapjoy/TJPlacement$4;->a:Lcom/tapjoy/TJPlacement;

    invoke-static {v0}, Lcom/tapjoy/TJPlacement;->h(Lcom/tapjoy/TJPlacement;)Lcom/tapjoy/internal/gc;

    move-result-object v0

    invoke-static {}, Lcom/tapjoy/internal/fv;->a()Lcom/tapjoy/internal/fv;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/internal/fv;->j()Lcom/tapjoy/internal/fw;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/gc;->a(Lcom/tapjoy/internal/fw;)V

    .line 365
    return-void
.end method
