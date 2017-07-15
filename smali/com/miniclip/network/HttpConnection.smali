.class public Lcom/miniclip/network/HttpConnection;
.super Ljava/lang/Object;
.source "HttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;
    }
.end annotation


# static fields
.field private static final CORE_POOL_SIZE:I

.field private static final CPU_COUNT:I

.field public static final HttpConnectionErrorBadURL:I = -0x3e8

.field public static final HttpConnectionErrorUnknown:I = -0x1

.field public static final HttpConnectionErrorUnknownHost:I = -0x3eb

.field private static final KEEP_ALIVE:I = 0x1

.field private static final MAXIMUM_POOL_SIZE:I

.field private static final THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

.field private static defaultTimeout:I

.field private static final sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private canceled:Z

.field protected connectionID:Ljava/lang/Integer;

.field private connectionTask:Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;

.field protected headerProperties:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected httpCommand:Ljava/lang/String;

.field protected jniCall:Z

.field protected listener:Lcom/miniclip/network/HttpConnectionListener;

.field protected timeout:I

.field protected urlBody:Ljava/lang/String;

.field protected urlString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 43
    const v0, 0xea60

    sput v0, Lcom/miniclip/network/HttpConnection;->defaultTimeout:I

    .line 50
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/miniclip/network/HttpConnection;->CPU_COUNT:I

    .line 51
    sget v0, Lcom/miniclip/network/HttpConnection;->CPU_COUNT:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miniclip/network/HttpConnection;->CORE_POOL_SIZE:I

    .line 52
    sget v0, Lcom/miniclip/network/HttpConnection;->CPU_COUNT:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miniclip/network/HttpConnection;->MAXIMUM_POOL_SIZE:I

    .line 54
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/miniclip/network/HttpConnection;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    .line 55
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget v2, Lcom/miniclip/network/HttpConnection;->CORE_POOL_SIZE:I

    sget v3, Lcom/miniclip/network/HttpConnection;->MAXIMUM_POOL_SIZE:I

    const-wide/16 v4, 0x1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/miniclip/network/HttpConnection;->sPoolWorkQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    sput-object v1, Lcom/miniclip/network/HttpConnection;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;

    .prologue
    .line 89
    const-string v3, ""

    const/4 v4, 0x0

    sget v5, Lcom/miniclip/network/HttpConnection;->defaultTimeout:I

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/miniclip/network/HttpConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miniclip/network/HttpConnectionListener;ILjava/util/HashMap;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/miniclip/network/HttpConnectionListener;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "listener"    # Lcom/miniclip/network/HttpConnectionListener;

    .prologue
    .line 99
    const-string v3, ""

    sget v5, Lcom/miniclip/network/HttpConnection;->defaultTimeout:I

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/miniclip/network/HttpConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miniclip/network/HttpConnectionListener;ILjava/util/HashMap;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "urlBody"    # Ljava/lang/String;

    .prologue
    .line 94
    const/4 v4, 0x0

    sget v5, Lcom/miniclip/network/HttpConnection;->defaultTimeout:I

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/miniclip/network/HttpConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miniclip/network/HttpConnectionListener;ILjava/util/HashMap;)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miniclip/network/HttpConnectionListener;)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "urlBody"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/miniclip/network/HttpConnectionListener;

    .prologue
    .line 104
    sget v5, Lcom/miniclip/network/HttpConnection;->defaultTimeout:I

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/miniclip/network/HttpConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miniclip/network/HttpConnectionListener;ILjava/util/HashMap;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miniclip/network/HttpConnectionListener;I)V
    .locals 7
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "urlBody"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/miniclip/network/HttpConnectionListener;
    .param p5, "timeout"    # I

    .prologue
    .line 84
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/miniclip/network/HttpConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miniclip/network/HttpConnectionListener;ILjava/util/HashMap;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miniclip/network/HttpConnectionListener;ILjava/util/HashMap;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "urlBody"    # Ljava/lang/String;
    .param p4, "listener"    # Lcom/miniclip/network/HttpConnectionListener;
    .param p5, "timeout"    # I
    .param p6, "headerProperties"    # Ljava/util/HashMap;

    .prologue
    const/4 v1, 0x0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean v1, p0, Lcom/miniclip/network/HttpConnection;->jniCall:Z

    .line 37
    const-string v0, "GET"

    iput-object v0, p0, Lcom/miniclip/network/HttpConnection;->httpCommand:Ljava/lang/String;

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/miniclip/network/HttpConnection;->urlBody:Ljava/lang/String;

    .line 60
    iput-boolean v1, p0, Lcom/miniclip/network/HttpConnection;->canceled:Z

    .line 74
    invoke-static {}, Lcom/miniclip/network/HttpConnectionsManager;->sharedInstance()Lcom/miniclip/network/HttpConnectionsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/miniclip/network/HttpConnectionsManager;->addConnection(Lcom/miniclip/network/HttpConnection;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/miniclip/network/HttpConnection;->connectionID:Ljava/lang/Integer;

    .line 75
    iput-object p1, p0, Lcom/miniclip/network/HttpConnection;->urlString:Ljava/lang/String;

    .line 76
    iput-object p2, p0, Lcom/miniclip/network/HttpConnection;->httpCommand:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/miniclip/network/HttpConnection;->urlBody:Ljava/lang/String;

    .line 78
    iput-object p4, p0, Lcom/miniclip/network/HttpConnection;->listener:Lcom/miniclip/network/HttpConnectionListener;

    .line 79
    iput p5, p0, Lcom/miniclip/network/HttpConnection;->timeout:I

    .line 80
    iput-object p6, p0, Lcom/miniclip/network/HttpConnection;->headerProperties:Ljava/util/HashMap;

    .line 81
    return-void
.end method

.method static synthetic access$000(IILjava/util/HashMap;I[B)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/util/HashMap;
    .param p3, "x3"    # I
    .param p4, "x4"    # [B

    .prologue
    .line 33
    invoke-static {p0, p1, p2, p3, p4}, Lcom/miniclip/network/HttpConnection;->downloadComplete(IILjava/util/HashMap;I[B)V

    return-void
.end method

.method static synthetic access$100(ILjava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .prologue
    .line 33
    invoke-static {p0, p1, p2}, Lcom/miniclip/network/HttpConnection;->downloadFailed(ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Lcom/miniclip/network/HttpConnection;)Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/network/HttpConnection;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/miniclip/network/HttpConnection;->connectionTask:Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miniclip/network/HttpConnection;Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;)Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/network/HttpConnection;
    .param p1, "x1"    # Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/miniclip/network/HttpConnection;->connectionTask:Lcom/miniclip/network/HttpConnection$MCHttpURLConnectionTask;

    return-object p1
.end method

.method static synthetic access$500()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/miniclip/network/HttpConnection;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method private static cancelConnection(I)Z
    .locals 4
    .param p0, "connectionID"    # I

    .prologue
    .line 336
    invoke-static {}, Lcom/miniclip/network/HttpConnectionsManager;->sharedInstance()Lcom/miniclip/network/HttpConnectionsManager;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miniclip/network/HttpConnectionsManager;->getConnection(Ljava/lang/Integer;)Lcom/miniclip/network/HttpConnection;

    move-result-object v0

    .line 337
    .local v0, "connection":Lcom/miniclip/network/HttpConnection;
    if-nez v0, :cond_0

    .line 338
    const-string v1, "HttpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to cancel connection: could not find connection with ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v1, 0x0

    .line 341
    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/miniclip/network/HttpConnection;->cancel()Z

    move-result v1

    goto :goto_0
.end method

.method private static native downloadComplete(IILjava/util/HashMap;I[B)V
.end method

.method private static native downloadFailed(ILjava/lang/String;I)V
.end method

.method private static newConnection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/HashMap;)I
    .locals 7
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "urlBody"    # Ljava/lang/String;
    .param p3, "timeout"    # I
    .param p4, "headerProperties"    # Ljava/util/HashMap;

    .prologue
    .line 310
    new-instance v0, Lcom/miniclip/network/HttpConnection;

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/miniclip/network/HttpConnection;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miniclip/network/HttpConnectionListener;ILjava/util/HashMap;)V

    .line 311
    .local v0, "connection":Lcom/miniclip/network/HttpConnection;
    iget-object v1, v0, Lcom/miniclip/network/HttpConnection;->connectionID:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private static startConnection(I)Z
    .locals 4
    .param p0, "connectionID"    # I

    .prologue
    .line 321
    invoke-static {}, Lcom/miniclip/network/HttpConnectionsManager;->sharedInstance()Lcom/miniclip/network/HttpConnectionsManager;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/miniclip/network/HttpConnectionsManager;->getConnection(Ljava/lang/Integer;)Lcom/miniclip/network/HttpConnection;

    move-result-object v0

    .line 322
    .local v0, "connection":Lcom/miniclip/network/HttpConnection;
    if-nez v0, :cond_0

    .line 323
    const-string v1, "HttpConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to start connection: could not find connection with ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/4 v1, 0x0

    .line 327
    :goto_0
    return v1

    .line 326
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miniclip/network/HttpConnection;->jniCall:Z

    .line 327
    invoke-virtual {v0}, Lcom/miniclip/network/HttpConnection;->start()Z

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public cancel()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 273
    iput-boolean v2, p0, Lcom/miniclip/network/HttpConnection;->canceled:Z

    .line 274
    sget-object v0, Lcom/miniclip/framework/ThreadingContext;->AndroidUi:Lcom/miniclip/framework/ThreadingContext;

    new-instance v1, Lcom/miniclip/network/HttpConnection$2;

    invoke-direct {v1, p0}, Lcom/miniclip/network/HttpConnection$2;-><init>(Lcom/miniclip/network/HttpConnection;)V

    invoke-static {v0, v1}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 283
    return v2
.end method

.method public getConnectionID()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/miniclip/network/HttpConnection;->connectionID:Ljava/lang/Integer;

    return-object v0
.end method

.method public start()Z
    .locals 3

    .prologue
    .line 248
    iget-boolean v0, p0, Lcom/miniclip/network/HttpConnection;->canceled:Z

    if-eqz v0, :cond_0

    .line 249
    const-string v0, "HttpConnection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not starting connection with ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miniclip/network/HttpConnection;->connectionID:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - cancel was already called."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v0, 0x0

    .line 265
    :goto_0
    return v0

    .line 252
    :cond_0
    sget-object v0, Lcom/miniclip/framework/ThreadingContext;->AndroidUi:Lcom/miniclip/framework/ThreadingContext;

    new-instance v1, Lcom/miniclip/network/HttpConnection$1;

    invoke-direct {v1, p0}, Lcom/miniclip/network/HttpConnection$1;-><init>(Lcom/miniclip/network/HttpConnection;)V

    invoke-static {v0, v1}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 265
    const/4 v0, 0x1

    goto :goto_0
.end method
