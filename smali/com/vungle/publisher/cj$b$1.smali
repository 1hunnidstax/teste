.class final Lcom/vungle/publisher/cj$b$1;
.super Lcom/vungle/publisher/o;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/cj$b;->a(Lcom/vungle/publisher/j;)Lcom/vungle/publisher/dw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/o",
        "<TF;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/j;

.field final synthetic b:Lcom/vungle/publisher/cj$b;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/cj$b;Lcom/vungle/publisher/j;)V
    .locals 0

    .prologue
    .line 259
    iput-object p1, p0, Lcom/vungle/publisher/cj$b$1;->b:Lcom/vungle/publisher/cj$b;

    iput-object p2, p0, Lcom/vungle/publisher/cj$b$1;->a:Lcom/vungle/publisher/j;

    invoke-direct {p0}, Lcom/vungle/publisher/o;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/vungle/publisher/cj$b$1;->b:Lcom/vungle/publisher/cj$b;

    iget-object v0, v0, Lcom/vungle/publisher/cj$b;->a:Lcom/vungle/publisher/eo$a;

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "cannot get cacheable factory for ad type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vungle/publisher/cj$b$1;->a:Lcom/vungle/publisher/j;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final bridge synthetic c()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/vungle/publisher/cj$b$1;->b:Lcom/vungle/publisher/cj$b;

    iget-object v0, v0, Lcom/vungle/publisher/cj$b;->c:Lcom/vungle/publisher/js$a;

    return-object v0
.end method

.method protected final bridge synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/vungle/publisher/cj$b$1;->b:Lcom/vungle/publisher/cj$b;

    iget-object v0, v0, Lcom/vungle/publisher/cj$b;->d:Lcom/vungle/publisher/gs$a;

    return-object v0
.end method
