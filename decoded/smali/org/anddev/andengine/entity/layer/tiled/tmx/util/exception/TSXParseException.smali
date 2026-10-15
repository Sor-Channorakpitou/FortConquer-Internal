.class public Lorg/anddev/andengine/entity/layer/tiled/tmx/util/exception/TSXParseException;
.super Lorg/xml/sax/SAXException;
.source "TSXParseException.java"


# static fields
.field private static final serialVersionUID:J = -0x69744d1ad80fbe26L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lorg/xml/sax/SAXException;-><init>()V

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/Exception;)V
    .locals 0
    .param p1, "pException"    # Ljava/lang/Exception;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "pDetailMessage"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "pMessage"    # Ljava/lang/String;
    .param p2, "pException"    # Ljava/lang/Exception;

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 41
    return-void
.end method
