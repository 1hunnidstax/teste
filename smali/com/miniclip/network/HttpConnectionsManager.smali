.class public Lcom/miniclip/network/HttpConnectionsManager;
.super Ljava/lang/Object;
.source "HttpConnectionsManager.java"


# static fields
.field protected static instance:Lcom/miniclip/network/HttpConnectionsManager;


# instance fields
.field protected connections:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/miniclip/network/HttpConnection;",
            ">;"
        }
    .end annotation
.end field

.field public context:Landroid/content/Context;

.field protected lastAssignedID:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/miniclip/network/HttpConnectionsManager;

    invoke-direct {v0}, Lcom/miniclip/network/HttpConnectionsManager;-><init>()V

    sput-object v0, Lcom/miniclip/network/HttpConnectionsManager;->instance:Lcom/miniclip/network/HttpConnectionsManager;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/miniclip/network/HttpConnectionsManager;->lastAssignedID:Ljava/lang/Integer;

    .line 19
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miniclip/network/HttpConnectionsManager;->connections:Ljava/util/HashMap;

    .line 20
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miniclip/network/HttpConnectionsManager;->connections:Ljava/util/HashMap;

    .line 48
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/miniclip/network/HttpConnectionsManager;->lastAssignedID:Ljava/lang/Integer;

    .line 49
    return-void
.end method

.method public static sharedInstance()Lcom/miniclip/network/HttpConnectionsManager;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/miniclip/network/HttpConnectionsManager;->instance:Lcom/miniclip/network/HttpConnectionsManager;

    return-object v0
.end method


# virtual methods
.method public addConnection(Lcom/miniclip/network/HttpConnection;)Ljava/lang/Integer;
    .locals 2
    .param p1, "connection"    # Lcom/miniclip/network/HttpConnection;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miniclip/network/HttpConnectionsManager;->lastAssignedID:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/miniclip/network/HttpConnectionsManager;->lastAssignedID:Ljava/lang/Integer;

    .line 28
    iget-object v0, p0, Lcom/miniclip/network/HttpConnectionsManager;->connections:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/miniclip/network/HttpConnectionsManager;->lastAssignedID:Ljava/lang/Integer;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v0, p0, Lcom/miniclip/network/HttpConnectionsManager;->lastAssignedID:Ljava/lang/Integer;

    return-object v0
.end method

.method public getConnection(Ljava/lang/Integer;)Lcom/miniclip/network/HttpConnection;
    .locals 1
    .param p1, "connectionID"    # Ljava/lang/Integer;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miniclip/network/HttpConnectionsManager;->connections:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/network/HttpConnection;

    return-object v0
.end method

.method public removeConnection(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "connectionID"    # Ljava/lang/Integer;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/miniclip/network/HttpConnectionsManager;->connections:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    return-void
.end method

.method public stateDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HttpConnectionsManager: currently holding "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miniclip/network/HttpConnectionsManager;->connections:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " connections.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/miniclip/network/HttpConnectionsManager;->connections:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
