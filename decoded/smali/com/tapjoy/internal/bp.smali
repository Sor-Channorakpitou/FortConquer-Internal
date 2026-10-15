.class public final Lcom/tapjoy/internal/bp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/bp$3;
    }
.end annotation


# static fields
.field public static final a:Lcom/tapjoy/internal/bo;

.field public static final b:Lcom/tapjoy/internal/bo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    new-instance v0, Lcom/tapjoy/internal/bp$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/bp$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/bp;->a:Lcom/tapjoy/internal/bo;

    .line 32
    new-instance v0, Lcom/tapjoy/internal/bp$2;

    invoke-direct {v0}, Lcom/tapjoy/internal/bp$2;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/bp;->b:Lcom/tapjoy/internal/bo;

    return-void
.end method
