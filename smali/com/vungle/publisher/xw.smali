.class public final Lcom/vungle/publisher/xw;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aii;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/aii",
        "<",
        "Lcom/vungle/publisher/vy;",
        "Lcom/vungle/publisher/ahp",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/wn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/vy;)Lcom/vungle/publisher/ahp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/vy;",
            ")",
            "Lcom/vungle/publisher/ahp",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/xw;->a:Lcom/vungle/publisher/wn;

    iget-object v1, p1, Lcom/vungle/publisher/vy;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/wn;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/publisher/akc;->a(Ljava/lang/Object;)Lcom/vungle/publisher/akc;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 25
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/vungle/publisher/ahx;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    check-cast p1, Lcom/vungle/publisher/vy;

    invoke-direct {p0, p1}, Lcom/vungle/publisher/xw;->a(Lcom/vungle/publisher/vy;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    return-object v0
.end method
