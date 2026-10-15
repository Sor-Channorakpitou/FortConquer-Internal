.class public final Lcom/tapjoy/internal/gn;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final g:Lcom/tapjoy/internal/bo;


# instance fields
.field public final a:Landroid/graphics/Rect;

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lcom/tapjoy/internal/fj;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/tapjoy/internal/gn$1;

    invoke-direct {v0}, Lcom/tapjoy/internal/gn$1;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/gn;->g:Lcom/tapjoy/internal/bo;

    return-void
.end method

.method constructor <init>(Landroid/graphics/Rect;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/fj;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/tapjoy/internal/gn;->a:Landroid/graphics/Rect;

    .line 24
    iput-object p2, p0, Lcom/tapjoy/internal/gn;->b:Ljava/lang/String;

    .line 25
    iput-boolean p3, p0, Lcom/tapjoy/internal/gn;->c:Z

    .line 26
    iput-object p4, p0, Lcom/tapjoy/internal/gn;->d:Ljava/lang/String;

    .line 27
    iput-object p5, p0, Lcom/tapjoy/internal/gn;->e:Ljava/lang/String;

    .line 28
    iput-object p6, p0, Lcom/tapjoy/internal/gn;->f:Lcom/tapjoy/internal/fj;

    .line 29
    return-void
.end method
