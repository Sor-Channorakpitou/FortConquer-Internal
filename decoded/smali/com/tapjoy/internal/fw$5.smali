.class final Lcom/tapjoy/internal/fw$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/fw;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tapjoy/internal/fw;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/fw;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/tapjoy/internal/fw$5;->b:Lcom/tapjoy/internal/fw;

    iput-object p2, p0, Lcom/tapjoy/internal/fw$5;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/tapjoy/internal/fw$5;->b:Lcom/tapjoy/internal/fw;

    invoke-static {v0}, Lcom/tapjoy/internal/fw;->a(Lcom/tapjoy/internal/fw;)Lcom/tapjoy/internal/fm;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fw$5;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/tapjoy/internal/fm;->d(Ljava/lang/String;)V

    .line 115
    return-void
.end method
