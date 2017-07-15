.class final Lcom/vungle/publisher/aiz$a;
.super Lcom/vungle/publisher/ahu;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aiz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vungle/publisher/ahu",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final b:Lcom/vungle/publisher/ahu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ahu",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/ahu;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahu",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;I)V"
        }
    .end annotation

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/vungle/publisher/ahu;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/vungle/publisher/aiz$a;->b:Lcom/vungle/publisher/ahu;

    .line 98
    iput p2, p0, Lcom/vungle/publisher/aiz$a;->c:I

    .line 99
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/aiz$a;->a(J)V

    .line 100
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/vungle/publisher/aiz$a;->d:Ljava/util/List;

    .line 127
    if-eqz v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/vungle/publisher/aiz$a;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Object;)V

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/aiz$a;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0}, Lcom/vungle/publisher/ahu;->a()V

    .line 131
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 104
    iget-object v0, p0, Lcom/vungle/publisher/aiz$a;->d:Ljava/util/List;

    .line 105
    if-nez v0, :cond_0

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/vungle/publisher/aiz$a;->c:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 107
    iput-object v0, p0, Lcom/vungle/publisher/aiz$a;->d:Ljava/util/List;

    .line 110
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/vungle/publisher/aiz$a;->c:I

    if-ne v1, v2, :cond_1

    .line 113
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vungle/publisher/aiz$a;->d:Ljava/util/List;

    .line 114
    iget-object v1, p0, Lcom/vungle/publisher/aiz$a;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Object;)V

    .line 116
    :cond_1
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/publisher/aiz$a;->d:Ljava/util/List;

    .line 121
    iget-object v0, p0, Lcom/vungle/publisher/aiz$a;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Throwable;)V

    .line 122
    return-void
.end method
