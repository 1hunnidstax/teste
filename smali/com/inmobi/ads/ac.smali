.class final Lcom/inmobi/ads/ac;
.super Lcom/inmobi/ads/AdUnit;
.source "NativeStrandAdUnit.java"


# static fields
.field private static final b:Ljava/lang/String;

.field private static f:Landroid/os/Handler;


# instance fields
.field private final c:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/inmobi/ads/ai;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/ac;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;J[Ljava/lang/Integer;Lcom/inmobi/ads/AdUnit$b;)V
    .locals 2
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/inmobi/ads/AdUnit;-><init>(Landroid/app/Activity;JLcom/inmobi/ads/AdUnit$b;)V

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/ac;->d:Z

    .line 60
    invoke-static {p4}, Lcom/inmobi/ads/ac;->a([Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/ac;->c:Ljava/lang/String;

    .line 61
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/inmobi/ads/ac;->f:Landroid/os/Handler;

    .line 62
    return-void
.end method

.method static synthetic P()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/inmobi/ads/ac;->b:Ljava/lang/String;

    return-object v0
.end method

.method private Q()I
    .locals 1

    .prologue
    .line 226
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a()Lcom/inmobi/commons/core/utilities/info/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/info/c;->b()I

    move-result v0

    return v0
.end method

.method private R()Ljava/lang/String;
    .locals 1

    .prologue
    .line 230
    const-string v0, "NS-1.0.0-20160411"

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/ads/ac;Lcom/inmobi/ads/ai;)Lcom/inmobi/ads/ai;
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/inmobi/ads/ac;->e:Lcom/inmobi/ads/ai;

    return-object p1
.end method

.method private static a([Ljava/lang/Integer;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 215
    array-length v0, p0

    if-nez v0, :cond_0

    .line 216
    const-string v0, ""

    .line 222
    :goto_0
    return-object v0

    .line 218
    :cond_0
    const-string v0, ""

    .line 219
    array-length v4, p0

    move v1, v2

    move-object v3, v0

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v0, p0, v1

    .line 220
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 219
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 222
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/ads/ac;)Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/inmobi/ads/ac;->d:Z

    return v0
.end method


# virtual methods
.method protected B()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 87
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 88
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_PENDING:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 89
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/ac;->b:Ljava/lang/String;

    const-string v2, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const/4 v0, 0x1

    .line 96
    :cond_0
    return v0
.end method

.method protected F()V
    .locals 0

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->o()V

    .line 202
    return-void
.end method

.method public N()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/inmobi/ads/ac;->d:Z

    return v0
.end method

.method public O()V
    .locals 5

    .prologue
    .line 160
    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/ads/ac;->d:Z

    if-eqz v0, :cond_0

    .line 171
    :goto_0
    return-void

    .line 161
    :cond_0
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->F()V

    .line 162
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 163
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/ac;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Could not destroy native ad; SDK encountered unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/ac;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in destroying native ad unit; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 168
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 167
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method a(Lcom/inmobi/ads/ai;)V
    .locals 2
    .param p1    # Lcom/inmobi/ads/ai;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 234
    sget-object v0, Lcom/inmobi/ads/ac;->f:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/ads/ac$1;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/ads/ac$1;-><init>(Lcom/inmobi/ads/ac;Lcom/inmobi/ads/ai;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    return-void
.end method

.method public b(JLcom/inmobi/ads/a;)V
    .locals 6
    .param p3    # Lcom/inmobi/ads/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 106
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/ac;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Native Strands ad successfully fetched for placement id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 107
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 106
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 109
    invoke-virtual {p0, p3}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/ac;->b:Ljava/lang/String;

    const-string v2, "Ad fetch successful"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 112
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/AdUnit;Z)V

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 116
    :cond_1
    const-string v0, "ParsingFailed"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/ac;->b(Ljava/lang/String;)V

    .line 117
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    :catch_0
    move-exception v0

    .line 121
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Failed to load ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/ac;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in loading ad; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 124
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 123
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method protected b(JZ)V
    .locals 3

    .prologue
    .line 130
    invoke-super {p0, p1, p2, p3}, Lcom/inmobi/ads/AdUnit;->b(JZ)V

    .line 131
    if-nez p3, :cond_2

    .line 132
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->b()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    .line 133
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 134
    :cond_0
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 135
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_NO_LONGER_AVAILABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, p0, v1}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 149
    :cond_1
    :goto_0
    return-void

    .line 141
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->b()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 142
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/ac;->b:Ljava/lang/String;

    const-string v2, "Setting state to READY"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 144
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/AdUnit;)V

    goto :goto_0
.end method

.method protected b(Lcom/inmobi/ads/a;)V
    .locals 0

    .prologue
    .line 101
    return-void
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 175
    const-string v0, "inlban"

    return-object v0
.end method

.method e(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 265
    sget-object v0, Lcom/inmobi/ads/ac;->f:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/ads/ac$2;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/ads/ac$2;-><init>(Lcom/inmobi/ads/ac;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 287
    return-void
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return-object v0
.end method

.method protected h()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    return-object v0
.end method

.method protected i()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 192
    const-string v1, "a-adPositions"

    iget-object v2, p0, Lcom/inmobi/ads/ac;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    const-string v1, "a-parentViewWidth"

    invoke-direct {p0}, Lcom/inmobi/ads/ac;->Q()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v1, "a-productVersion"

    invoke-direct {p0}, Lcom/inmobi/ads/ac;->R()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v1, "trackerType"

    const-string v2, "url_ping"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-object v0
.end method

.method protected t()Lcom/inmobi/ads/AdContainer;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/inmobi/ads/ac;->e:Lcom/inmobi/ads/ai;

    return-object v0
.end method

.method public x()V
    .locals 6

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/inmobi/ads/ac;->d:Z

    if-eqz v0, :cond_0

    .line 71
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/ac;->b:Ljava/lang/String;

    const-string v2, "Ad unit is already destroyed! Returning ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/ac;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetching a Native Strands ad for placement id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 76
    invoke-virtual {p0}, Lcom/inmobi/ads/ac;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->x()V

    goto :goto_0
.end method
