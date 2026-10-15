.class public interface abstract Lcom/droidhen/fortconquer/EffectUtil$INSTANCES$TASK;
.super Ljava/lang/Object;
.source "EffectUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/droidhen/fortconquer/EffectUtil$INSTANCES;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TASK"
.end annotation


# static fields
.field public static final NOTHING:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 193
    new-instance v0, Lcom/droidhen/fortconquer/EffectUtil$INSTANCES$TASK$1;

    invoke-direct {v0}, Lcom/droidhen/fortconquer/EffectUtil$INSTANCES$TASK$1;-><init>()V

    sput-object v0, Lcom/droidhen/fortconquer/EffectUtil$INSTANCES$TASK;->NOTHING:Ljava/lang/Runnable;

    .line 197
    return-void
.end method
