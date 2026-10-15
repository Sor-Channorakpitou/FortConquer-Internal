.class public Lorg/anddev/andengine/entity/ZIndexSorter;
.super Lorg/anddev/andengine/util/sort/InsertionSorter;
.source "ZIndexSorter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/anddev/andengine/util/sort/InsertionSorter",
        "<",
        "Lorg/anddev/andengine/entity/IEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static INSTANCE:Lorg/anddev/andengine/entity/ZIndexSorter;


# instance fields
.field private final mZIndexComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lorg/anddev/andengine/util/sort/InsertionSorter;-><init>()V

    .line 19
    new-instance v0, Lorg/anddev/andengine/entity/ZIndexSorter$1;

    invoke-direct {v0, p0}, Lorg/anddev/andengine/entity/ZIndexSorter$1;-><init>(Lorg/anddev/andengine/entity/ZIndexSorter;)V

    iput-object v0, p0, Lorg/anddev/andengine/entity/ZIndexSorter;->mZIndexComparator:Ljava/util/Comparator;

    .line 32
    return-void
.end method

.method public static getInstance()Lorg/anddev/andengine/entity/ZIndexSorter;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lorg/anddev/andengine/entity/ZIndexSorter;->INSTANCE:Lorg/anddev/andengine/entity/ZIndexSorter;

    if-nez v0, :cond_0

    .line 36
    new-instance v0, Lorg/anddev/andengine/entity/ZIndexSorter;

    invoke-direct {v0}, Lorg/anddev/andengine/entity/ZIndexSorter;-><init>()V

    sput-object v0, Lorg/anddev/andengine/entity/ZIndexSorter;->INSTANCE:Lorg/anddev/andengine/entity/ZIndexSorter;

    .line 38
    :cond_0
    sget-object v0, Lorg/anddev/andengine/entity/ZIndexSorter;->INSTANCE:Lorg/anddev/andengine/entity/ZIndexSorter;

    return-object v0
.end method


# virtual methods
.method public sort(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "pEntities":Ljava/util/List;, "Ljava/util/List<Lorg/anddev/andengine/entity/IEntity;>;"
    iget-object v0, p0, Lorg/anddev/andengine/entity/ZIndexSorter;->mZIndexComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Lorg/anddev/andengine/entity/ZIndexSorter;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 63
    return-void
.end method

.method public sort(Ljava/util/List;II)V
    .locals 1
    .param p2, "pStart"    # I
    .param p3, "pEnd"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/anddev/andengine/entity/IEntity;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "pEntities":Ljava/util/List;, "Ljava/util/List<Lorg/anddev/andengine/entity/IEntity;>;"
    iget-object v0, p0, Lorg/anddev/andengine/entity/ZIndexSorter;->mZIndexComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/entity/ZIndexSorter;->sort(Ljava/util/List;IILjava/util/Comparator;)V

    .line 67
    return-void
.end method

.method public sort([Lorg/anddev/andengine/entity/IEntity;)V
    .locals 1
    .param p1, "pEntities"    # [Lorg/anddev/andengine/entity/IEntity;

    .prologue
    .line 54
    iget-object v0, p0, Lorg/anddev/andengine/entity/ZIndexSorter;->mZIndexComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, v0}, Lorg/anddev/andengine/entity/ZIndexSorter;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 55
    return-void
.end method

.method public sort([Lorg/anddev/andengine/entity/IEntity;II)V
    .locals 1
    .param p1, "pEntities"    # [Lorg/anddev/andengine/entity/IEntity;
    .param p2, "pStart"    # I
    .param p3, "pEnd"    # I

    .prologue
    .line 58
    iget-object v0, p0, Lorg/anddev/andengine/entity/ZIndexSorter;->mZIndexComparator:Ljava/util/Comparator;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/anddev/andengine/entity/ZIndexSorter;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 59
    return-void
.end method
