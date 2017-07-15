.class final Lcom/vungle/publisher/afo$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aii;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/afo;->a(ILjava/lang/String;)Lcom/vungle/publisher/aii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/aii",
        "<",
        "Lcom/vungle/publisher/ahp",
        "<+",
        "Ljava/lang/Throwable;",
        ">;",
        "Lcom/vungle/publisher/ahp",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/vungle/publisher/afo;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/afo;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/vungle/publisher/afo$1;->c:Lcom/vungle/publisher/afo;

    iput p2, p0, Lcom/vungle/publisher/afo$1;->a:I

    iput-object p3, p0, Lcom/vungle/publisher/afo$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 45
    check-cast p1, Lcom/vungle/publisher/ahp;

    iget v0, p0, Lcom/vungle/publisher/afo$1;->a:I

    if-gez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Count can not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/vungle/publisher/ain;->a()Lcom/vungle/publisher/ahp;

    move-result-object v0

    :goto_0
    new-instance v1, Lcom/vungle/publisher/afo$1$2;

    invoke-direct {v1, p0}, Lcom/vungle/publisher/afo$1$2;-><init>(Lcom/vungle/publisher/afo$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahp;Lcom/vungle/publisher/aij;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    new-instance v1, Lcom/vungle/publisher/afo$1$1;

    invoke-direct {v1, p0}, Lcom/vungle/publisher/afo$1$1;-><init>(Lcom/vungle/publisher/afo$1;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    return-object v0

    :cond_1
    const v1, 0x7fffffff

    sub-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x1

    if-le v2, v1, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start + count can not exceed Integer.MAX_VALUE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-ne v0, v2, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/publisher/akc;->a(Ljava/lang/Object;)Lcom/vungle/publisher/akc;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/vungle/publisher/aiv;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v0, v0, 0x1

    invoke-direct {v1, v0}, Lcom/vungle/publisher/aiv;-><init>(I)V

    invoke-static {v1}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahp$a;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    goto :goto_0
.end method
