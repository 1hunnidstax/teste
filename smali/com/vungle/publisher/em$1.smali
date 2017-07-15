.class final Lcom/vungle/publisher/em$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ra$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/em;->E()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/vungle/publisher/em;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/em;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lcom/vungle/publisher/em$1;->b:Lcom/vungle/publisher/em;

    iput-object p2, p0, Lcom/vungle/publisher/em$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/File;Ljava/lang/String;J)V
    .locals 5

    .prologue
    .line 143
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "extracted "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/vungle/publisher/em$1;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/vungle/publisher/em$1;->b:Lcom/vungle/publisher/em;

    iget-object v1, v1, Lcom/vungle/publisher/em;->f:Lcom/vungle/publisher/db$a;

    iget-object v2, p0, Lcom/vungle/publisher/em$1;->b:Lcom/vungle/publisher/em;

    .line 145
    long-to-int v3, p3

    invoke-virtual {v1}, Lcom/vungle/publisher/db$a;->a()Lcom/vungle/publisher/db;

    move-result-object v1

    iput-object v2, v1, Lcom/vungle/publisher/db;->a:Lcom/vungle/publisher/em;

    iput-object p2, v1, Lcom/vungle/publisher/db;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/vungle/publisher/db;->c:Ljava/lang/Integer;

    .line 144
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method
