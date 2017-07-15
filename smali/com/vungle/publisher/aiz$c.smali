.class final Lcom/vungle/publisher/aiz$c;
.super Lcom/vungle/publisher/ahu;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aiz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/aiz$c$a;
    }
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

.field final d:I

.field e:J

.field f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/ahu;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahu",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/vungle/publisher/ahu;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/vungle/publisher/aiz$c;->b:Lcom/vungle/publisher/ahu;

    .line 160
    iput p2, p0, Lcom/vungle/publisher/aiz$c;->c:I

    .line 161
    iput p3, p0, Lcom/vungle/publisher/aiz$c;->d:I

    .line 162
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/aiz$c;->a(J)V

    .line 163
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/vungle/publisher/aiz$c;->f:Ljava/util/List;

    .line 199
    if-eqz v0, :cond_0

    .line 200
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vungle/publisher/aiz$c;->f:Ljava/util/List;

    .line 201
    iget-object v1, p0, Lcom/vungle/publisher/aiz$c;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Object;)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/aiz$c;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0}, Lcom/vungle/publisher/ahu;->a()V

    .line 204
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    .line 167
    iget-wide v2, p0, Lcom/vungle/publisher/aiz$c;->e:J

    .line 168
    iget-object v0, p0, Lcom/vungle/publisher/aiz$c;->f:Ljava/util/List;

    .line 169
    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lcom/vungle/publisher/aiz$c;->c:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 171
    iput-object v0, p0, Lcom/vungle/publisher/aiz$c;->f:Ljava/util/List;

    .line 173
    :cond_0
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 174
    iget v1, p0, Lcom/vungle/publisher/aiz$c;->d:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    .line 175
    iput-wide v6, p0, Lcom/vungle/publisher/aiz$c;->e:J

    .line 180
    :goto_0
    if-eqz v0, :cond_1

    .line 181
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/vungle/publisher/aiz$c;->c:I

    if-ne v1, v2, :cond_1

    .line 184
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vungle/publisher/aiz$c;->f:Ljava/util/List;

    .line 185
    iget-object v1, p0, Lcom/vungle/publisher/aiz$c;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Object;)V

    .line 188
    :cond_1
    return-void

    .line 177
    :cond_2
    iput-wide v2, p0, Lcom/vungle/publisher/aiz$c;->e:J

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/publisher/aiz$c;->f:Ljava/util/List;

    .line 193
    iget-object v0, p0, Lcom/vungle/publisher/aiz$c;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Throwable;)V

    .line 194
    return-void
.end method
