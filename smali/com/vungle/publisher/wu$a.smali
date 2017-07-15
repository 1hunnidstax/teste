.class public abstract Lcom/vungle/publisher/wu$a;
.super Lcom/vungle/publisher/vs$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/wu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/vungle/publisher/wu;",
        ">",
        "Lcom/vungle/publisher/vs$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field c:Ljava/lang/String;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vungle/publisher/vs$a;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected final synthetic c()Lcom/vungle/publisher/vs;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/vungle/publisher/wu$a;->d()Lcom/vungle/publisher/wu;

    move-result-object v0

    return-object v0
.end method

.method protected final d()Lcom/vungle/publisher/wu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 26
    invoke-super {p0}, Lcom/vungle/publisher/vs$a;->c()Lcom/vungle/publisher/vs;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/wu;

    .line 27
    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/wu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/wu;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/vungle/publisher/wu$a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/vungle/publisher/wu$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/vs;->b:Ljava/lang/String;

    .line 30
    return-object v0
.end method
