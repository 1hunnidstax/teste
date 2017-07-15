.class public Lcom/inmobi/ads/ao;
.super Lcom/inmobi/ads/ViewableAd$a;
.source "NativeV2Inflater.java"

# interfaces
.implements Lcom/inmobi/ads/ae$b;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/inmobi/ads/ae;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/inmobi/ads/ai;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final d:Lcom/inmobi/ads/ae$c;

.field private final e:Lcom/inmobi/ads/ae$a;

.field private final f:Lcom/inmobi/ads/aw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/inmobi/ads/ao;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/ao;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/ads/ai;Lcom/inmobi/ads/NativeV2DataModel;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/ai;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/ads/NativeV2DataModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/inmobi/ads/ViewableAd$a;-><init>()V

    .line 21
    new-instance v0, Lcom/inmobi/ads/ao$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/ao$1;-><init>(Lcom/inmobi/ads/ao;)V

    iput-object v0, p0, Lcom/inmobi/ads/ao;->d:Lcom/inmobi/ads/ae$c;

    .line 29
    new-instance v0, Lcom/inmobi/ads/ao$2;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/ao$2;-><init>(Lcom/inmobi/ads/ao;)V

    iput-object v0, p0, Lcom/inmobi/ads/ao;->e:Lcom/inmobi/ads/ae$a;

    .line 37
    new-instance v0, Lcom/inmobi/ads/ao$3;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/ao$3;-><init>(Lcom/inmobi/ads/ao;)V

    iput-object v0, p0, Lcom/inmobi/ads/ao;->f:Lcom/inmobi/ads/aw;

    .line 141
    iput-object p2, p0, Lcom/inmobi/ads/ao;->c:Lcom/inmobi/ads/ai;

    .line 142
    new-instance v0, Lcom/inmobi/ads/ae;

    iget-object v3, p0, Lcom/inmobi/ads/ao;->d:Lcom/inmobi/ads/ae$c;

    iget-object v4, p0, Lcom/inmobi/ads/ao;->e:Lcom/inmobi/ads/ae$a;

    move-object v1, p1

    move-object v2, p3

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/ae;-><init>(Landroid/content/Context;Lcom/inmobi/ads/NativeV2DataModel;Lcom/inmobi/ads/ae$c;Lcom/inmobi/ads/ae$a;Lcom/inmobi/ads/ae$b;)V

    iput-object v0, p0, Lcom/inmobi/ads/ao;->b:Lcom/inmobi/ads/ae;

    .line 144
    iget-object v0, p0, Lcom/inmobi/ads/ao;->b:Lcom/inmobi/ads/ae;

    iget-object v1, p0, Lcom/inmobi/ads/ao;->f:Lcom/inmobi/ads/aw;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ae;->a(Lcom/inmobi/ads/aw;)V

    .line 145
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/ao;)Lcom/inmobi/ads/ai;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/inmobi/ads/ao;->c:Lcom/inmobi/ads/ai;

    return-object v0
.end method

.method private a(Lcom/inmobi/ads/ag;)Z
    .locals 2
    .param p1    # Lcom/inmobi/ads/ag;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 185
    invoke-virtual {p1}, Lcom/inmobi/ads/ag;->a()Lcom/inmobi/ads/ai;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/ao;->c:Lcom/inmobi/ads/ai;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 150
    if-nez p1, :cond_1

    .line 151
    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/ao;->b:Lcom/inmobi/ads/ae;

    .line 152
    invoke-virtual {v0, v3, p2}, Lcom/inmobi/ads/ae;->b(Lcom/inmobi/ads/ag;Landroid/view/ViewGroup;)Lcom/inmobi/ads/ag;

    move-result-object v0

    .line 169
    :goto_0
    iget-object v1, p0, Lcom/inmobi/ads/ao;->c:Lcom/inmobi/ads/ai;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ag;->a(Lcom/inmobi/ads/ai;)V

    .line 170
    return-object v0

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ao;->b:Lcom/inmobi/ads/ae;

    .line 153
    invoke-virtual {v0, v3, p2}, Lcom/inmobi/ads/ae;->a(Lcom/inmobi/ads/ag;Landroid/view/ViewGroup;)Lcom/inmobi/ads/ag;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_1
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/ao;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 155
    check-cast p1, Lcom/inmobi/ads/ag;

    .line 156
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ao;->a(Lcom/inmobi/ads/ag;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 157
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/inmobi/ads/ao;->b:Lcom/inmobi/ads/ae;

    .line 158
    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ae;->b(Lcom/inmobi/ads/ag;Landroid/view/ViewGroup;)Lcom/inmobi/ads/ag;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/ao;->b:Lcom/inmobi/ads/ae;

    .line 159
    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ae;->a(Lcom/inmobi/ads/ag;Landroid/view/ViewGroup;)Lcom/inmobi/ads/ag;

    move-result-object v0

    goto :goto_0

    .line 161
    :cond_3
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/ao;->a:Ljava/lang/String;

    const-string v2, "Already showing same ad, ignoring inflateView"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, p1

    goto :goto_0

    .line 164
    :cond_4
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/ao;->a:Ljava/lang/String;

    const-string v2, "InMobiNativeStrand.getStrandView called with Non Strand View."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    if-eqz p3, :cond_5

    iget-object v0, p0, Lcom/inmobi/ads/ao;->b:Lcom/inmobi/ads/ae;

    .line 166
    invoke-virtual {v0, v3, p2}, Lcom/inmobi/ads/ae;->b(Lcom/inmobi/ads/ag;Landroid/view/ViewGroup;)Lcom/inmobi/ads/ag;

    move-result-object v0

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/inmobi/ads/ao;->b:Lcom/inmobi/ads/ae;

    .line 167
    invoke-virtual {v0, v3, p2}, Lcom/inmobi/ads/ae;->a(Lcom/inmobi/ads/ag;Landroid/view/ViewGroup;)Lcom/inmobi/ads/ag;

    move-result-object v0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/inmobi/ads/ao;->b:Lcom/inmobi/ads/ae;

    invoke-virtual {v0}, Lcom/inmobi/ads/ae;->c()V

    .line 202
    invoke-super {p0}, Lcom/inmobi/ads/ViewableAd$a;->a()V

    .line 203
    return-void
.end method

.method public a(Lcom/inmobi/ads/as;)V
    .locals 2

    .prologue
    .line 207
    invoke-virtual {p1}, Lcom/inmobi/ads/as;->m()Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;->ASSET_ACTION_ON_FINISH_EXIT:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;

    if-ne v0, v1, :cond_0

    .line 208
    iget-object v0, p0, Lcom/inmobi/ads/ao;->c:Lcom/inmobi/ads/ai;

    invoke-virtual {v0}, Lcom/inmobi/ads/ai;->s()V

    .line 210
    :cond_0
    return-void
.end method

.method a(Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 196
    instance-of v0, p1, Lcom/inmobi/ads/ag;

    return v0
.end method

.method public bridge synthetic b()Z
    .locals 1

    .prologue
    .line 12
    invoke-super {p0}, Lcom/inmobi/ads/ViewableAd$a;->b()Z

    move-result v0

    return v0
.end method
