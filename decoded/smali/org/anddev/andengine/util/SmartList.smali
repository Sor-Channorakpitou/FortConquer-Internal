.class public Lorg/anddev/andengine/util/SmartList;
.super Ljava/util/ArrayList;
.source "SmartList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/ArrayList",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x73af5f76cfc5be46L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    .local p0, "this":Lorg/anddev/andengine/util/SmartList;, "Lorg/anddev/andengine/util/SmartList<TT;>;"
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "pCapacity"    # I

    .prologue
    .line 32
    .local p0, "this":Lorg/anddev/andengine/util/SmartList;, "Lorg/anddev/andengine/util/SmartList<TT;>;"
    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    return-void
.end method


# virtual methods
.method public call(Lorg/anddev/andengine/util/IMatcher;Lorg/anddev/andengine/util/ParameterCallable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/IMatcher",
            "<TT;>;",
            "Lorg/anddev/andengine/util/ParameterCallable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, "this":Lorg/anddev/andengine/util/SmartList;, "Lorg/anddev/andengine/util/SmartList<TT;>;"
    .local p1, "pMatcher":Lorg/anddev/andengine/util/IMatcher;, "Lorg/anddev/andengine/util/IMatcher<TT;>;"
    .local p2, "pParameterCallable":Lorg/anddev/andengine/util/ParameterCallable;, "Lorg/anddev/andengine/util/ParameterCallable<TT;>;"
    invoke-virtual {p0}, Lorg/anddev/andengine/util/SmartList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 133
    return-void

    .line 128
    :cond_0
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 129
    .local v1, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Lorg/anddev/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    invoke-interface {p2, v1}, Lorg/anddev/andengine/util/ParameterCallable;->call(Ljava/lang/Object;)V

    .line 127
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public call(Lorg/anddev/andengine/util/ParameterCallable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/ParameterCallable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Lorg/anddev/andengine/util/SmartList;, "Lorg/anddev/andengine/util/SmartList<TT;>;"
    .local p1, "pParameterCallable":Lorg/anddev/andengine/util/ParameterCallable;, "Lorg/anddev/andengine/util/ParameterCallable<TT;>;"
    invoke-virtual {p0}, Lorg/anddev/andengine/util/SmartList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 124
    return-void

    .line 121
    :cond_0
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 122
    .local v1, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Lorg/anddev/andengine/util/ParameterCallable;->call(Ljava/lang/Object;)V

    .line 120
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public clear(Lorg/anddev/andengine/util/ParameterCallable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/ParameterCallable",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "this":Lorg/anddev/andengine/util/SmartList;, "Lorg/anddev/andengine/util/SmartList<TT;>;"
    .local p1, "pParameterCallable":Lorg/anddev/andengine/util/ParameterCallable;, "Lorg/anddev/andengine/util/ParameterCallable<TT;>;"
    invoke-virtual {p0}, Lorg/anddev/andengine/util/SmartList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 107
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/SmartList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .line 105
    .local v1, "removed":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Lorg/anddev/andengine/util/ParameterCallable;->call(Ljava/lang/Object;)V

    .line 103
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public find(Lorg/anddev/andengine/util/IMatcher;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/IMatcher",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lorg/anddev/andengine/util/SmartList;, "Lorg/anddev/andengine/util/SmartList<TT;>;"
    .local p1, "pMatcher":Lorg/anddev/andengine/util/IMatcher;, "Lorg/anddev/andengine/util/IMatcher<TT;>;"
    invoke-virtual {p0}, Lorg/anddev/andengine/util/SmartList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_1

    .line 116
    const/4 v1, 0x0

    :cond_0
    return-object v1

    .line 111
    :cond_1
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 112
    .local v1, "item":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v1}, Lorg/anddev/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public remove(Lorg/anddev/andengine/util/IMatcher;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/IMatcher",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lorg/anddev/andengine/util/SmartList;, "Lorg/anddev/andengine/util/SmartList<TT;>;"
    .local p1, "pMatcher":Lorg/anddev/andengine/util/IMatcher;, "Lorg/anddev/andengine/util/IMatcher<TT;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lorg/anddev/andengine/util/SmartList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 61
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 57
    :cond_0
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/anddev/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/SmartList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    goto :goto_1

    .line 56
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public remove(Lorg/anddev/andengine/util/IMatcher;Lorg/anddev/andengine/util/ParameterCallable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/IMatcher",
            "<TT;>;",
            "Lorg/anddev/andengine/util/ParameterCallable",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lorg/anddev/andengine/util/SmartList;, "Lorg/anddev/andengine/util/SmartList<TT;>;"
    .local p1, "pMatcher":Lorg/anddev/andengine/util/IMatcher;, "Lorg/anddev/andengine/util/IMatcher<TT;>;"
    .local p2, "pParameterCallable":Lorg/anddev/andengine/util/ParameterCallable;, "Lorg/anddev/andengine/util/ParameterCallable<TT;>;"
    invoke-virtual {p0}, Lorg/anddev/andengine/util/SmartList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 72
    const/4 v1, 0x0

    :goto_1
    return-object v1

    .line 66
    :cond_0
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/anddev/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/SmartList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .line 68
    .local v1, "removed":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v1}, Lorg/anddev/andengine/util/ParameterCallable;->call(Ljava/lang/Object;)V

    goto :goto_1

    .line 65
    .end local v1    # "removed":Ljava/lang/Object;, "TT;"
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Lorg/anddev/andengine/util/ParameterCallable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/anddev/andengine/util/ParameterCallable",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 48
    .local p0, "this":Lorg/anddev/andengine/util/SmartList;, "Lorg/anddev/andengine/util/SmartList<TT;>;"
    .local p1, "pItem":Ljava/lang/Object;, "TT;"
    .local p2, "pParameterCallable":Lorg/anddev/andengine/util/ParameterCallable;, "Lorg/anddev/andengine/util/ParameterCallable<TT;>;"
    invoke-virtual {p0, p1}, Lorg/anddev/andengine/util/SmartList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 49
    .local v0, "removed":Z
    if-eqz v0, :cond_0

    .line 50
    invoke-interface {p2, p1}, Lorg/anddev/andengine/util/ParameterCallable;->call(Ljava/lang/Object;)V

    .line 52
    :cond_0
    return v0
.end method

.method public removeAll(Lorg/anddev/andengine/util/IMatcher;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/IMatcher",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 76
    .local p0, "this":Lorg/anddev/andengine/util/SmartList;, "Lorg/anddev/andengine/util/SmartList<TT;>;"
    .local p1, "pMatcher":Lorg/anddev/andengine/util/IMatcher;, "Lorg/anddev/andengine/util/IMatcher<TT;>;"
    const/4 v1, 0x0

    .line 77
    .local v1, "result":Z
    invoke-virtual {p0}, Lorg/anddev/andengine/util/SmartList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 83
    return v1

    .line 78
    :cond_0
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/anddev/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/SmartList;->remove(I)Ljava/lang/Object;

    .line 80
    const/4 v1, 0x1

    .line 77
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public removeAll(Lorg/anddev/andengine/util/IMatcher;Lorg/anddev/andengine/util/ParameterCallable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/anddev/andengine/util/IMatcher",
            "<TT;>;",
            "Lorg/anddev/andengine/util/ParameterCallable",
            "<TT;>;)Z"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "this":Lorg/anddev/andengine/util/SmartList;, "Lorg/anddev/andengine/util/SmartList<TT;>;"
    .local p1, "pMatcher":Lorg/anddev/andengine/util/IMatcher;, "Lorg/anddev/andengine/util/IMatcher<TT;>;"
    .local p2, "pParameterCallable":Lorg/anddev/andengine/util/ParameterCallable;, "Lorg/anddev/andengine/util/ParameterCallable<TT;>;"
    const/4 v2, 0x0

    .line 92
    .local v2, "result":Z
    invoke-virtual {p0}, Lorg/anddev/andengine/util/SmartList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-gez v0, :cond_0

    .line 99
    return v2

    .line 93
    :cond_0
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/SmartList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Lorg/anddev/andengine/util/IMatcher;->matches(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {p0, v0}, Lorg/anddev/andengine/util/SmartList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    .line 95
    .local v1, "removed":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v1}, Lorg/anddev/andengine/util/ParameterCallable;->call(Ljava/lang/Object;)V

    .line 96
    const/4 v2, 0x1

    .line 92
    .end local v1    # "removed":Ljava/lang/Object;, "TT;"
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method
