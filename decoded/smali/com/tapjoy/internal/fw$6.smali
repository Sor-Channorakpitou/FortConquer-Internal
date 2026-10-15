.class final Lcom/tapjoy/internal/fw$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/fw;->a(Ljava/lang/String;Lcom/tapjoy/internal/fj;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tapjoy/internal/fj;

.field final synthetic c:Lcom/tapjoy/internal/fw;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fw;Ljava/lang/String;Lcom/tapjoy/internal/fj;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/tapjoy/internal/fw$6;->c:Lcom/tapjoy/internal/fw;

    iput-object p2, p0, Lcom/tapjoy/internal/fw$6;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tapjoy/internal/fw$6;->b:Lcom/tapjoy/internal/fj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/tapjoy/internal/fw$6;->c:Lcom/tapjoy/internal/fw;

    invoke-static {v0}, Lcom/tapjoy/internal/fw;->a(Lcom/tapjoy/internal/fw;)Lcom/tapjoy/internal/fm;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fw$6;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/fw$6;->b:Lcom/tapjoy/internal/fj;

    invoke-interface {v0, v1, v2}, Lcom/tapjoy/internal/fm;->a(Ljava/lang/String;Lcom/tapjoy/internal/fj;)V

    .line 125
    return-void
.end method
