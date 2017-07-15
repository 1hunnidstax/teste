.class public Lcom/inmobi/rendering/mraid/g;
.super Ljava/lang/Object;
.source "MraidJsFetcher.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:Lcom/inmobi/commons/core/network/NetworkRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/inmobi/rendering/mraid/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/mraid/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/g;->b:Ljava/lang/String;

    .line 34
    iput p2, p0, Lcom/inmobi/rendering/mraid/g;->c:I

    .line 35
    iput p3, p0, Lcom/inmobi/rendering/mraid/g;->d:I

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/g;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/inmobi/rendering/mraid/g;->c:I

    return v0
.end method

.method static synthetic b(Lcom/inmobi/rendering/mraid/g;)Lcom/inmobi/commons/core/network/NetworkRequest;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->e:Lcom/inmobi/commons/core/network/NetworkRequest;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/inmobi/rendering/mraid/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/rendering/mraid/g;)I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/inmobi/rendering/mraid/g;->d:I

    return v0
.end method

.method static synthetic d(Lcom/inmobi/rendering/mraid/g;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 39
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/g;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 40
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/g;->a:Ljava/lang/String;

    const-string v2, "MRAID Js Url provided is invalid."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :goto_0
    return-void

    .line 44
    :cond_0
    new-instance v0, Lcom/inmobi/commons/core/network/NetworkRequest;

    sget-object v1, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->GET:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/g;->b:Ljava/lang/String;

    const/4 v4, 0x0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/commons/core/network/NetworkRequest;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;Z)V

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/g;->e:Lcom/inmobi/commons/core/network/NetworkRequest;

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    const-string v1, "Accept-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/g;->e:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->c(Ljava/util/Map;)V

    .line 48
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/rendering/mraid/g$1;

    invoke-direct {v1, p0}, Lcom/inmobi/rendering/mraid/g$1;-><init>(Lcom/inmobi/rendering/mraid/g;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 132
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
