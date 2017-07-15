.class public final Lcom/vungle/publisher/xt;
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
        "Ljava/lang/String;",
        "Lcom/vungle/publisher/ahp",
        "<",
        "Lcom/vungle/publisher/adf;",
        ">;>;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/adf$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/vungle/publisher/ahp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/vungle/publisher/ahp",
            "<",
            "Lcom/vungle/publisher/adf;",
            ">;"
        }
    .end annotation

    .prologue
    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/xt;->a:Lcom/vungle/publisher/adf$a;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/adf$a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/publisher/akc;->a(Ljava/lang/Object;)Lcom/vungle/publisher/akc;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 24
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
    .line 13
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/vungle/publisher/xt;->a(Ljava/lang/String;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    return-object v0
.end method
