.class final Lcom/vungle/publisher/ajj$a$2;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aie;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/ajj$a;->a(Lcom/vungle/publisher/aie;JLjava/util/concurrent/TimeUnit;)Lcom/vungle/publisher/ahv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/aie;

.field final synthetic b:Lcom/vungle/publisher/ajj$a;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/ajj$a;Lcom/vungle/publisher/aie;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/vungle/publisher/ajj$a$2;->b:Lcom/vungle/publisher/ajj$a;

    iput-object p2, p0, Lcom/vungle/publisher/ajj$a$2;->a:Lcom/vungle/publisher/aie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/vungle/publisher/ajj$a$2;->b:Lcom/vungle/publisher/ajj$a;

    iget-object v0, v0, Lcom/vungle/publisher/ajj$a;->a:Lcom/vungle/publisher/akd;

    iget-boolean v0, v0, Lcom/vungle/publisher/akd;->b:Z

    if-eqz v0, :cond_0

    .line 190
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/ajj$a$2;->a:Lcom/vungle/publisher/aie;

    invoke-interface {v0}, Lcom/vungle/publisher/aie;->d()V

    goto :goto_0
.end method
