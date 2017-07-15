.class public Lcom/inmobi/ads/bh;
.super Ljava/lang/Object;
.source "VastHelper.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/ads/ah$a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Lcom/inmobi/ads/c$g;

.field private final c:Ljava/lang/String;

.field private e:I

.field private f:Lcom/inmobi/ads/bj;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 52
    const-class v0, Lcom/inmobi/ads/bh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/bh;->a:Ljava/lang/String;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/ads/bh;->d:Ljava/util/Map;

    .line 99
    sget-object v0, Lcom/inmobi/ads/bh;->d:Ljava/util/Map;

    const-string v1, "Error"

    sget-object v2, Lcom/inmobi/ads/ah$a;->t:Lcom/inmobi/ads/ah$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/inmobi/ads/bh;->d:Ljava/util/Map;

    const-string v1, "Impression"

    sget-object v2, Lcom/inmobi/ads/ah$a;->d:Lcom/inmobi/ads/ah$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/inmobi/ads/bh;->d:Ljava/util/Map;

    const-string v1, "ClickTracking"

    sget-object v2, Lcom/inmobi/ads/ah$a;->f:Lcom/inmobi/ads/ah$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/inmobi/ads/bh;->d:Ljava/util/Map;

    const-string v1, "creativeView"

    sget-object v2, Lcom/inmobi/ads/ah$a;->m:Lcom/inmobi/ads/ah$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/inmobi/ads/bh;->d:Ljava/util/Map;

    const-string v1, "start"

    sget-object v2, Lcom/inmobi/ads/ah$a;->h:Lcom/inmobi/ads/ah$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/inmobi/ads/bh;->d:Ljava/util/Map;

    const-string v1, "firstQuartile"

    sget-object v2, Lcom/inmobi/ads/ah$a;->i:Lcom/inmobi/ads/ah$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/inmobi/ads/bh;->d:Ljava/util/Map;

    const-string v1, "midpoint"

    sget-object v2, Lcom/inmobi/ads/ah$a;->j:Lcom/inmobi/ads/ah$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/inmobi/ads/bh;->d:Ljava/util/Map;

    const-string v1, "thirdQuartile"

    sget-object v2, Lcom/inmobi/ads/ah$a;->k:Lcom/inmobi/ads/ah$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/inmobi/ads/bh;->d:Ljava/util/Map;

    const-string v1, "complete"

    sget-object v2, Lcom/inmobi/ads/ah$a;->l:Lcom/inmobi/ads/ah$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/inmobi/ads/bh;->d:Ljava/util/Map;

    const-string v1, "mute"

    sget-object v2, Lcom/inmobi/ads/ah$a;->p:Lcom/inmobi/ads/ah$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/inmobi/ads/bh;->d:Ljava/util/Map;

    const-string v1, "unmute"

    sget-object v2, Lcom/inmobi/ads/ah$a;->q:Lcom/inmobi/ads/ah$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v0, Lcom/inmobi/ads/bh;->d:Ljava/util/Map;

    const-string v1, "pause"

    sget-object v2, Lcom/inmobi/ads/ah$a;->r:Lcom/inmobi/ads/ah$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v0, Lcom/inmobi/ads/bh;->d:Ljava/util/Map;

    const-string v1, "resume"

    sget-object v2, Lcom/inmobi/ads/ah$a;->s:Lcom/inmobi/ads/ah$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/inmobi/ads/bh;->d:Ljava/util/Map;

    const-string v1, "fullscreen"

    sget-object v2, Lcom/inmobi/ads/ah$a;->n:Lcom/inmobi/ads/ah$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/inmobi/ads/bh;->d:Ljava/util/Map;

    const-string v1, "exitFullscreen"

    sget-object v2, Lcom/inmobi/ads/ah$a;->o:Lcom/inmobi/ads/ah$a;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/inmobi/ads/c$g;)V
    .locals 2

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    const-string v0, "Progressive"

    iput-object v0, p0, Lcom/inmobi/ads/bh;->c:Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/ads/bh;->e:I

    .line 120
    iput-object p1, p0, Lcom/inmobi/ads/bh;->b:Lcom/inmobi/ads/c$g;

    .line 121
    new-instance v0, Lcom/inmobi/ads/bj;

    iget-object v1, p0, Lcom/inmobi/ads/bh;->b:Lcom/inmobi/ads/c$g;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/bj;-><init>(Lcom/inmobi/ads/c$g;)V

    iput-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    .line 122
    return-void
.end method

.method static a(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 223
    if-nez p0, :cond_1

    .line 234
    :cond_0
    :goto_0
    return-object v0

    .line 229
    :cond_1
    :try_start_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;
    :try_end_0
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 234
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v1

    .line 231
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/bh;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error getting node value; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/w3c/dom/DOMException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    move-object v1, v0

    goto :goto_1
.end method

.method static a(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 208
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v1

    .line 219
    :goto_0
    return-object v0

    .line 211
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 212
    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 213
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 214
    invoke-interface {v3, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 216
    :cond_2
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-nez v0, :cond_3

    move-object v0, v1

    .line 217
    goto :goto_0

    :cond_3
    move-object v0, v2

    .line 219
    goto :goto_0
.end method

.method private static a(Ljava/util/List;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/w3c/dom/Node;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 193
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    move-object v2, v1

    .line 204
    :cond_1
    :goto_0
    return-object v2

    .line 198
    :cond_2
    const/4 v0, 0x0

    move v3, v0

    move-object v0, v1

    move v1, v3

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 199
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    invoke-static {v0, p1}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 200
    if-nez v2, :cond_1

    .line 198
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_1

    :cond_3
    move-object v2, v0

    goto :goto_0
.end method

.method static a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 3

    .prologue
    .line 163
    invoke-static {p0, p1}, Lcom/inmobi/ads/bh;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 165
    const/4 v0, 0x0

    .line 166
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 167
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 169
    :cond_0
    return-object v0
.end method

.method private a(Lcom/inmobi/ads/VastErrorCode;)V
    .locals 4

    .prologue
    .line 635
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/bj;->a(Lcom/inmobi/ads/VastErrorCode;)V

    .line 638
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    invoke-virtual {v0}, Lcom/inmobi/ads/bj;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ah;

    .line 639
    invoke-virtual {v0}, Lcom/inmobi/ads/ah;->c()Lcom/inmobi/ads/ah$a;

    move-result-object v2

    sget-object v3, Lcom/inmobi/ads/ah$a;->t:Lcom/inmobi/ads/ah$a;

    if-ne v2, v3, :cond_0

    .line 640
    invoke-direct {p0, p1, v0}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/VastErrorCode;Lcom/inmobi/ads/ah;)V

    goto :goto_0

    .line 643
    :cond_1
    return-void
.end method

.method private a(Lcom/inmobi/ads/VastErrorCode;Lcom/inmobi/ads/ah;)V
    .locals 5

    .prologue
    .line 646
    invoke-static {}, Lcom/inmobi/rendering/a/c;->a()Lcom/inmobi/rendering/a/c;

    move-result-object v0

    .line 647
    invoke-virtual {p2}, Lcom/inmobi/ads/ah;->b()Ljava/lang/String;

    move-result-object v1

    .line 650
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 651
    const-string v3, "[ERRORCODE]"

    invoke-virtual {p1}, Lcom/inmobi/ads/VastErrorCode;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    invoke-static {v1, v2}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-virtual {p2}, Lcom/inmobi/ads/ah;->d()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/rendering/a/c;->a(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 654
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 590
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 601
    :cond_0
    return-void

    .line 594
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    move-object v1, v0

    .line 595
    check-cast v1, Lorg/w3c/dom/Element;

    const-string v3, "event"

    invoke-interface {v1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 597
    sget-object v3, Lcom/inmobi/ads/bh;->d:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 598
    sget-object v3, Lcom/inmobi/ads/bh;->d:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/ah$a;

    invoke-direct {p0, v1, v0}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/ah$a;Lorg/w3c/dom/Node;)Z

    goto :goto_0
.end method

.method private a(Ljava/util/List;Lcom/inmobi/ads/bg;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;",
            "Lcom/inmobi/ads/bg;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 539
    if-eqz p1, :cond_2

    move v1, v2

    .line 540
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 541
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 542
    const/4 v3, 0x1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v3, v4, :cond_0

    .line 543
    invoke-static {v0}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 544
    invoke-static {v0}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 545
    sget-object v3, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/ads/bh;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed URL: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "; Discarding this tracker"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 549
    :cond_1
    new-instance v3, Lcom/inmobi/ads/ah;

    sget-object v4, Lcom/inmobi/ads/ah$a;->f:Lcom/inmobi/ads/ah$a;

    const/4 v5, 0x0

    invoke-direct {v3, v0, v2, v4, v5}, Lcom/inmobi/ads/ah;-><init>(Ljava/lang/String;ILcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 550
    invoke-virtual {p2, v3}, Lcom/inmobi/ads/bg;->a(Lcom/inmobi/ads/ah;)V

    goto :goto_1

    .line 554
    :cond_2
    return-void
.end method

.method private a(Lorg/w3c/dom/Document;)V
    .locals 2

    .prologue
    .line 557
    const-string v0, "ClickTracking"

    invoke-static {p1, v0}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 558
    sget-object v1, Lcom/inmobi/ads/ah$a;->f:Lcom/inmobi/ads/ah$a;

    invoke-direct {p0, v1, v0}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/ah$a;Ljava/util/List;)Z

    .line 559
    return-void
.end method

.method private a(Lcom/inmobi/ads/ah$a;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/ah$a;",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 605
    if-eqz p2, :cond_1

    move v1, v2

    .line 606
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 607
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 608
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-ne v4, v3, :cond_0

    .line 609
    invoke-direct {p0, p1, v0}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/ah$a;Lorg/w3c/dom/Node;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 615
    :goto_1
    return v2

    .line 606
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    move v2, v3

    .line 615
    goto :goto_1
.end method

.method private a(Lcom/inmobi/ads/ah$a;Lorg/w3c/dom/Node;)Z
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 620
    invoke-static {p2}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    .line 621
    invoke-static {v2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 622
    sget-object v3, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/ads/bh;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Malformed URL "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " Discarding this tracker"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    sget-object v2, Lcom/inmobi/ads/ah$a;->d:Lcom/inmobi/ads/ah$a;

    if-ne p1, v2, :cond_0

    .line 631
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 627
    goto :goto_0

    .line 629
    :cond_1
    new-instance v3, Lcom/inmobi/ads/ah;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v0, p1, v4}, Lcom/inmobi/ads/ah;-><init>(Ljava/lang/String;ILcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 630
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    invoke-virtual {v0, v3}, Lcom/inmobi/ads/bj;->a(Lcom/inmobi/ads/ah;)V

    move v0, v1

    .line 631
    goto :goto_0
.end method

.method private static b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Node;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 173
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 174
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v0, v1

    .line 185
    :goto_0
    return-object v0

    .line 178
    :cond_1
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    .line 179
    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 180
    invoke-interface {v2, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 181
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 182
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v1

    .line 185
    goto :goto_0
.end method

.method private b(Lorg/w3c/dom/Node;)V
    .locals 2

    .prologue
    .line 562
    const-string v0, "ClickTracking"

    invoke-static {p1, v0}, Lcom/inmobi/ads/bh;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 563
    sget-object v1, Lcom/inmobi/ads/ah$a;->f:Lcom/inmobi/ads/ah$a;

    invoke-direct {p0, v1, v0}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/ah$a;Ljava/util/List;)Z

    .line 564
    return-void
.end method

.method private static c(Ljava/lang/String;)Lcom/inmobi/commons/core/network/c;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 125
    new-instance v0, Lcom/inmobi/commons/core/network/NetworkRequest;

    sget-object v1, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->GET:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v3, v2}, Lcom/inmobi/commons/core/network/NetworkRequest;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;)V

    .line 126
    invoke-virtual {v0, v3}, Lcom/inmobi/commons/core/network/NetworkRequest;->a(Z)V

    .line 127
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/network/NetworkRequest;->b(Z)V

    .line 129
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 130
    new-instance v1, Lcom/inmobi/commons/core/network/d;

    invoke-direct {v1, v0}, Lcom/inmobi/commons/core/network/d;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/d;->a()Lcom/inmobi/commons/core/network/c;

    move-result-object v1

    .line 132
    :try_start_0
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v4

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->t()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/inmobi/signals/n;->a(J)V

    .line 133
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v0

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/c;->f()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/inmobi/signals/n;->b(J)V

    .line 134
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/signals/n;->g(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    :goto_0
    return-object v1

    .line 135
    :catch_0
    move-exception v0

    .line 136
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/bh;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in setting request-response data size. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method private static c(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    invoke-static {p0, p1}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Lorg/w3c/dom/Node;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 567
    if-nez p1, :cond_1

    .line 586
    :cond_0
    :goto_0
    return v0

    .line 572
    :cond_1
    const-string v1, "Error"

    invoke-static {p1, v1}, Lcom/inmobi/ads/bh;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 573
    sget-object v2, Lcom/inmobi/ads/ah$a;->t:Lcom/inmobi/ads/ah$a;

    invoke-direct {p0, v2, v1}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/ah$a;Ljava/util/List;)Z

    .line 576
    const-string v1, "Impression"

    invoke-static {p1, v1}, Lcom/inmobi/ads/bh;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 577
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 581
    sget-object v2, Lcom/inmobi/ads/ah$a;->d:Lcom/inmobi/ads/ah$a;

    invoke-direct {p0, v2, v1}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/ah$a;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 586
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static d(Ljava/lang/String;)I
    .locals 4

    .prologue
    .line 143
    const/4 v0, 0x0

    .line 145
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 150
    :goto_0
    return v0

    .line 146
    :catch_0
    move-exception v1

    .line 148
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;)Lorg/w3c/dom/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;,
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .prologue
    .line 154
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    .line 155
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 157
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 158
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 159
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/inmobi/ads/bj;
    .locals 2

    .prologue
    .line 246
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 247
    :cond_0
    sget-object v0, Lcom/inmobi/ads/VastErrorCode;->GENERAL_WRAPPER_ERROR:Lcom/inmobi/ads/VastErrorCode;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/VastErrorCode;)V

    .line 248
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    .line 258
    :goto_0
    return-object v0

    .line 251
    :cond_1
    invoke-static {p1}, Lcom/inmobi/ads/bh;->c(Ljava/lang/String;)Lcom/inmobi/commons/core/network/c;

    move-result-object v0

    .line 253
    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 254
    sget-object v0, Lcom/inmobi/ads/VastErrorCode;->VAST_URI_NETWORK_ERROR:Lcom/inmobi/ads/VastErrorCode;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/VastErrorCode;)V

    .line 258
    :goto_1
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    goto :goto_0

    .line 256
    :cond_2
    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/bh;->b(Ljava/lang/String;)Lcom/inmobi/ads/bj;

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Lcom/inmobi/ads/bj;
    .locals 12
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 271
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 272
    :cond_0
    sget-object v0, Lcom/inmobi/ads/VastErrorCode;->WRAPPER_NO_AD:Lcom/inmobi/ads/VastErrorCode;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/VastErrorCode;)V

    .line 273
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    .line 535
    :goto_0
    return-object v0

    .line 278
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/inmobi/ads/bh;->e(Ljava/lang/String;)Lorg/w3c/dom/Document;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/w3c/dom/DOMException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v1

    .line 285
    const-string v0, "VAST"

    invoke-static {v1, v0}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 286
    if-nez v0, :cond_2

    .line 287
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/bh;->a:Ljava/lang/String;

    const-string v2, "VAST Schema validation error: VAST node at appropriate hierarchy not found"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    sget-object v0, Lcom/inmobi/ads/VastErrorCode;->SCHEMA_VALIDATION_ERROR:Lcom/inmobi/ads/VastErrorCode;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/VastErrorCode;)V

    .line 289
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    goto :goto_0

    .line 279
    :catch_0
    move-exception v0

    .line 280
    :goto_1
    sget-object v1, Lcom/inmobi/ads/VastErrorCode;->XML_PARSING_ERROR:Lcom/inmobi/ads/VastErrorCode;

    invoke-direct {p0, v1}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/VastErrorCode;)V

    .line 281
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 282
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    goto :goto_0

    .line 292
    :cond_2
    const-string v3, "Ad"

    invoke-static {v0, v3}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 293
    if-nez v0, :cond_3

    .line 294
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/bh;->a:Ljava/lang/String;

    const-string v2, "VAST Schema validation error: Ad node at appropriate hierarchy not found"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    sget-object v0, Lcom/inmobi/ads/VastErrorCode;->WRAPPER_NO_AD:Lcom/inmobi/ads/VastErrorCode;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/VastErrorCode;)V

    .line 296
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    goto :goto_0

    .line 302
    :cond_3
    const-string v3, "Wrapper"

    invoke-static {v0, v3}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 303
    if-eqz v3, :cond_9

    .line 304
    iget v0, p0, Lcom/inmobi/ads/bh;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/bh;->e:I

    .line 305
    iget v0, p0, Lcom/inmobi/ads/bh;->e:I

    iget-object v4, p0, Lcom/inmobi/ads/bh;->b:Lcom/inmobi/ads/c$g;

    invoke-virtual {v4}, Lcom/inmobi/ads/c$g;->a()I

    move-result v4

    if-le v0, v4, :cond_4

    .line 306
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/bh;->a:Ljava/lang/String;

    const-string v2, "Schema Validation Error:Max VAST wrapper limit exceeded"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    sget-object v0, Lcom/inmobi/ads/VastErrorCode;->WRAPPER_MAX_LIMIT_EXCEEDED:Lcom/inmobi/ads/VastErrorCode;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/VastErrorCode;)V

    .line 308
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    goto :goto_0

    .line 311
    :cond_4
    invoke-direct {p0, v3}, Lcom/inmobi/ads/bh;->c(Lorg/w3c/dom/Node;)Z

    move-result v0

    .line 312
    if-nez v0, :cond_5

    .line 313
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/bh;->a:Ljava/lang/String;

    const-string v2, "VAST Schema validation error: Impression Tracker at appropriate hierarchy not found"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    sget-object v0, Lcom/inmobi/ads/VastErrorCode;->SCHEMA_VALIDATION_ERROR:Lcom/inmobi/ads/VastErrorCode;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/VastErrorCode;)V

    .line 315
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    goto/16 :goto_0

    .line 319
    :cond_5
    const-string v0, "TrackingEvents"

    invoke-static {v1, v0}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Document;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_6

    .line 321
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 322
    const-string v2, "Tracking"

    invoke-static {v0, v2}, Lcom/inmobi/ads/bh;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 323
    invoke-direct {p0, v0}, Lcom/inmobi/ads/bh;->a(Ljava/util/List;)V

    .line 326
    :cond_6
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    invoke-static {v1, v0}, Lcom/inmobi/ads/s;->a(Lorg/w3c/dom/Document;Lcom/inmobi/ads/bj;)V

    .line 327
    invoke-direct {p0, v1}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Document;)V

    .line 329
    const-string v0, "VASTAdTagURI"

    invoke-static {v3, v0}, Lcom/inmobi/ads/bh;->c(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 330
    if-nez v0, :cond_7

    .line 331
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/bh;->a:Ljava/lang/String;

    const-string v2, "VAST Schema validation error: VastAdTagUri at appropriate hierarchy  not found"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    sget-object v0, Lcom/inmobi/ads/VastErrorCode;->SCHEMA_VALIDATION_ERROR:Lcom/inmobi/ads/VastErrorCode;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/VastErrorCode;)V

    .line 333
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    goto/16 :goto_0

    .line 336
    :cond_7
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/bh;->a(Ljava/lang/String;)Lcom/inmobi/ads/bj;

    .line 535
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    goto/16 :goto_0

    .line 340
    :cond_9
    const-string v3, "InLine"

    invoke-static {v0, v3}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 341
    if-nez v0, :cond_a

    .line 342
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/bh;->a:Ljava/lang/String;

    const-string v2, "VAST Schema validation error: InLine node at appropriate hierarchy  not found"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    sget-object v0, Lcom/inmobi/ads/VastErrorCode;->SCHEMA_VALIDATION_ERROR:Lcom/inmobi/ads/VastErrorCode;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/VastErrorCode;)V

    .line 344
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    goto/16 :goto_0

    .line 347
    :cond_a
    invoke-direct {p0, v0}, Lcom/inmobi/ads/bh;->c(Lorg/w3c/dom/Node;)Z

    move-result v3

    .line 348
    if-nez v3, :cond_b

    .line 349
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/bh;->a:Ljava/lang/String;

    const-string v2, "VAST Schema validation error: Impression Tracker at appropriate hierarchy  not found"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    sget-object v0, Lcom/inmobi/ads/VastErrorCode;->SCHEMA_VALIDATION_ERROR:Lcom/inmobi/ads/VastErrorCode;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/VastErrorCode;)V

    .line 351
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    goto/16 :goto_0

    .line 354
    :cond_b
    const-string v3, "Creatives"

    invoke-static {v0, v3}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 355
    if-nez v5, :cond_c

    .line 356
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/bh;->a:Ljava/lang/String;

    const-string v2, "VAST Schema validation error: Creatives at appropriate hierarchy  not found"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    sget-object v0, Lcom/inmobi/ads/VastErrorCode;->SCHEMA_VALIDATION_ERROR:Lcom/inmobi/ads/VastErrorCode;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/VastErrorCode;)V

    .line 358
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    goto/16 :goto_0

    .line 360
    :cond_c
    const-string v0, "Creative"

    invoke-static {v5, v0}, Lcom/inmobi/ads/bh;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_d

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 362
    :cond_d
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/bh;->a:Ljava/lang/String;

    const-string v2, "VAST Schema validation error: Creative at appropriate hierarchy  found"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    sget-object v0, Lcom/inmobi/ads/VastErrorCode;->SCHEMA_VALIDATION_ERROR:Lcom/inmobi/ads/VastErrorCode;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/VastErrorCode;)V

    .line 364
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    goto/16 :goto_0

    .line 366
    :cond_e
    const-string v3, "Linear"

    invoke-static {v0, v3}, Lcom/inmobi/ads/bh;->a(Ljava/util/List;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 369
    if-nez v3, :cond_f

    .line 370
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/bh;->a:Ljava/lang/String;

    const-string v2, "VAST Schema validation error: Linear node  at appropriate hierarchy not found"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    sget-object v0, Lcom/inmobi/ads/VastErrorCode;->UNSUPPORTED_AD_TYPE:Lcom/inmobi/ads/VastErrorCode;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/VastErrorCode;)V

    .line 372
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    goto/16 :goto_0

    .line 376
    :cond_f
    const-string v0, "Duration"

    invoke-static {v3, v0}, Lcom/inmobi/ads/bh;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_10

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 378
    :cond_10
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/bh;->a:Ljava/lang/String;

    const-string v2, "VAST Schema Validation Error.Duration tag not found"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    sget-object v0, Lcom/inmobi/ads/VastErrorCode;->SCHEMA_VALIDATION_ERROR:Lcom/inmobi/ads/VastErrorCode;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/VastErrorCode;)V

    .line 380
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    goto/16 :goto_0

    .line 382
    :cond_11
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    .line 383
    invoke-static {v0}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_12

    const-string v6, "\\d*:[0-5][0-9]:[0-5][0-9](:[0-9][0-9][0-9])?"

    invoke-virtual {v0, v6}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_13

    .line 386
    :cond_12
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/bh;->a:Ljava/lang/String;

    const-string v2, "VAST Schema Validation Error. Media Duration invalid"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    sget-object v0, Lcom/inmobi/ads/VastErrorCode;->SCHEMA_VALIDATION_ERROR:Lcom/inmobi/ads/VastErrorCode;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/VastErrorCode;)V

    .line 388
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    goto/16 :goto_0

    .line 390
    :cond_13
    iget-object v6, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    invoke-virtual {v6, v0}, Lcom/inmobi/ads/bj;->c(Ljava/lang/String;)V

    .line 393
    const-string v0, "MediaFiles"

    invoke-static {v3, v0}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 394
    if-nez v0, :cond_14

    .line 395
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/bh;->a:Ljava/lang/String;

    const-string v2, "VAST Schema validation error: MediaFiles node at appropriate hierarchy not found"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    sget-object v0, Lcom/inmobi/ads/VastErrorCode;->SCHEMA_VALIDATION_ERROR:Lcom/inmobi/ads/VastErrorCode;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/VastErrorCode;)V

    .line 397
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    goto/16 :goto_0

    .line 401
    :cond_14
    const-string v6, "VideoClicks"

    invoke-static {v3, v6}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 402
    const-string v7, "ClickThrough"

    invoke-static {v6, v7}, Lcom/inmobi/ads/bh;->c(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 403
    iget-object v8, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    invoke-virtual {v8, v7}, Lcom/inmobi/ads/bj;->b(Ljava/lang/String;)V

    .line 406
    invoke-direct {p0, v6}, Lcom/inmobi/ads/bh;->b(Lorg/w3c/dom/Node;)V

    .line 409
    const-string v6, "TrackingEvents"

    invoke-static {v3, v6}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 410
    const-string v6, "Tracking"

    invoke-static {v3, v6}, Lcom/inmobi/ads/bh;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 411
    invoke-direct {p0, v3}, Lcom/inmobi/ads/bh;->a(Ljava/util/List;)V

    .line 412
    iget-object v3, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    invoke-static {v1, v3}, Lcom/inmobi/ads/s;->a(Lorg/w3c/dom/Document;Lcom/inmobi/ads/bj;)V

    .line 414
    const-string v1, "MediaFile"

    invoke-static {v0, v1}, Lcom/inmobi/ads/bh;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 416
    if-eqz v6, :cond_15

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 417
    :cond_15
    sget-object v0, Lcom/inmobi/ads/VastErrorCode;->LINEAR_MEDIA_FILE_NOT_FOUND:Lcom/inmobi/ads/VastErrorCode;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/VastErrorCode;)V

    .line 418
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    goto/16 :goto_0

    :cond_16
    move v1, v2

    .line 421
    :goto_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1a

    .line 422
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 423
    invoke-static {v0}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    .line 424
    if-eqz v7, :cond_17

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 421
    :cond_17
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 428
    :cond_18
    const-string v3, "delivery"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 429
    const-string v3, "type"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 430
    const-string v3, "bitrate"

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/ads/bh;->d(Ljava/lang/String;)I

    move-result v10

    .line 432
    if-lez v10, :cond_17

    if-eqz v8, :cond_17

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Progressive"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 435
    iget-object v0, p0, Lcom/inmobi/ads/bh;->b:Lcom/inmobi/ads/c$g;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$g;->d()Ljava/util/List;

    move-result-object v11

    .line 436
    if-eqz v9, :cond_17

    move v3, v2

    .line 437
    :goto_5
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_17

    .line 438
    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 439
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    new-instance v3, Lcom/inmobi/ads/bi;

    invoke-direct {v3, v7, v8, v9, v10}, Lcom/inmobi/ads/bi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v3}, Lcom/inmobi/ads/bj;->a(Lcom/inmobi/ads/bi;)V

    goto :goto_4

    .line 437
    :cond_19
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_5

    .line 445
    :cond_1a
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    invoke-virtual {v0}, Lcom/inmobi/ads/bj;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 446
    sget-object v0, Lcom/inmobi/ads/VastErrorCode;->NO_SUPPORTED_MEDIA:Lcom/inmobi/ads/VastErrorCode;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/VastErrorCode;)V

    .line 449
    :cond_1b
    const-string v0, "Creative"

    invoke-static {v5, v0}, Lcom/inmobi/ads/bh;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 450
    if-eqz v0, :cond_1c

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 451
    :cond_1c
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/bh;->a:Ljava/lang/String;

    const-string v2, "VAST Schema validation error: Creative at appropriate hierarchy  found"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    sget-object v0, Lcom/inmobi/ads/VastErrorCode;->SCHEMA_VALIDATION_ERROR:Lcom/inmobi/ads/VastErrorCode;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/VastErrorCode;)V

    .line 453
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    goto/16 :goto_0

    .line 456
    :cond_1d
    const-string v1, "CompanionAds"

    invoke-static {v0, v1}, Lcom/inmobi/ads/bh;->a(Ljava/util/List;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 457
    if-nez v0, :cond_1e

    .line 458
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/bh;->a:Ljava/lang/String;

    const-string v2, "No companion ads found; Returning ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    goto/16 :goto_0

    .line 464
    :cond_1e
    const-string v1, "Companion"

    invoke-static {v0, v1}, Lcom/inmobi/ads/bh;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    move v3, v2

    .line 465
    :goto_6
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_28

    .line 466
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Element;

    .line 467
    const-string v1, "width"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/ads/bh;->d(Ljava/lang/String;)I

    move-result v6

    .line 468
    const-string v1, "height"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/ads/bh;->d(Ljava/lang/String;)I

    move-result v7

    .line 469
    if-eqz v6, :cond_1f

    if-nez v7, :cond_20

    .line 465
    :cond_1f
    :goto_7
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_6

    .line 472
    :cond_20
    const-string v1, "CompanionClickThrough"

    invoke-static {v0, v1}, Lcom/inmobi/ads/bh;->c(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_21

    move-object v1, v4

    .line 477
    :cond_21
    new-instance v8, Lcom/inmobi/ads/bg;

    invoke-direct {v8, v6, v7, v1}, Lcom/inmobi/ads/bg;-><init>(IILjava/lang/String;)V

    .line 480
    const-string v1, "StaticResource"

    invoke-static {v0, v1}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 481
    if-eqz v1, :cond_22

    .line 482
    invoke-static {v1}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v6

    .line 483
    check-cast v1, Lorg/w3c/dom/Element;

    const-string v7, "creativeType"

    invoke-interface {v1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 484
    if-eqz v1, :cond_22

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_22

    sget-object v7, Lcom/inmobi/ads/bg;->a:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 485
    new-instance v1, Lcom/inmobi/ads/bg$a;

    sget-object v7, Lcom/inmobi/ads/bg$a$a;->b:Lcom/inmobi/ads/bg$a$a;

    invoke-direct {v1, v7, v6}, Lcom/inmobi/ads/bg$a;-><init>(Lcom/inmobi/ads/bg$a$a;Ljava/lang/String;)V

    .line 486
    invoke-virtual {v8, v1}, Lcom/inmobi/ads/bg;->a(Lcom/inmobi/ads/bg$a;)V

    .line 490
    :cond_22
    const-string v1, "HTMLResource"

    invoke-static {v0, v1}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 491
    if-eqz v1, :cond_23

    .line 492
    invoke-static {v1}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 493
    new-instance v6, Lcom/inmobi/ads/bg$a;

    sget-object v7, Lcom/inmobi/ads/bg$a$a;->c:Lcom/inmobi/ads/bg$a$a;

    invoke-direct {v6, v7, v1}, Lcom/inmobi/ads/bg$a;-><init>(Lcom/inmobi/ads/bg$a$a;Ljava/lang/String;)V

    .line 494
    invoke-virtual {v8, v6}, Lcom/inmobi/ads/bg;->a(Lcom/inmobi/ads/bg$a;)V

    .line 497
    :cond_23
    const-string v1, "IFrameResource"

    invoke-static {v0, v1}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 498
    if-eqz v1, :cond_24

    .line 499
    invoke-static {v1}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v1

    .line 500
    new-instance v6, Lcom/inmobi/ads/bg$a;

    sget-object v7, Lcom/inmobi/ads/bg$a$a;->d:Lcom/inmobi/ads/bg$a$a;

    invoke-direct {v6, v7, v1}, Lcom/inmobi/ads/bg$a;-><init>(Lcom/inmobi/ads/bg$a$a;Ljava/lang/String;)V

    .line 501
    invoke-virtual {v8, v6}, Lcom/inmobi/ads/bg;->a(Lcom/inmobi/ads/bg$a;)V

    .line 504
    :cond_24
    const-string v1, "CompanionClickTracking"

    invoke-static {v0, v1}, Lcom/inmobi/ads/bh;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 505
    invoke-direct {p0, v1, v8}, Lcom/inmobi/ads/bh;->a(Ljava/util/List;Lcom/inmobi/ads/bg;)V

    .line 508
    const-string v1, "TrackingEvents"

    .line 509
    invoke-static {v0, v1}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 510
    const-string v1, "Tracking"

    .line 511
    invoke-static {v0, v1}, Lcom/inmobi/ads/bh;->b(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 512
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_25
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    move-object v1, v0

    .line 513
    check-cast v1, Lorg/w3c/dom/Element;

    const-string v7, "event"

    invoke-interface {v1, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 515
    sget-object v7, Lcom/inmobi/ads/bh;->d:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 516
    invoke-static {v0}, Lcom/inmobi/ads/bh;->a(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v7

    .line 517
    invoke-static {v7}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_26

    .line 518
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/bh;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Malformed URL: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "; Discarding this tracker"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v1, v7}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 522
    :cond_26
    new-instance v9, Lcom/inmobi/ads/ah;

    sget-object v0, Lcom/inmobi/ads/bh;->d:Ljava/util/Map;

    .line 523
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ah$a;

    invoke-direct {v9, v7, v2, v0, v4}, Lcom/inmobi/ads/ah;-><init>(Ljava/lang/String;ILcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 524
    invoke-virtual {v8, v9}, Lcom/inmobi/ads/bg;->a(Lcom/inmobi/ads/ah;)V

    goto :goto_8

    .line 528
    :cond_27
    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    invoke-virtual {v0, v8}, Lcom/inmobi/ads/bj;->b(Lcom/inmobi/ads/bg;)V

    goto/16 :goto_7

    .line 530
    :cond_28
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/inmobi/ads/bh;->f:Lcom/inmobi/ads/bj;

    invoke-virtual {v0}, Lcom/inmobi/ads/bj;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 531
    sget-object v0, Lcom/inmobi/ads/VastErrorCode;->GENERAL_COMPANION_ERROR:Lcom/inmobi/ads/VastErrorCode;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bh;->a(Lcom/inmobi/ads/VastErrorCode;)V

    goto/16 :goto_2

    .line 279
    :catch_1
    move-exception v0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_1

    :catch_3
    move-exception v0

    goto/16 :goto_1
.end method
