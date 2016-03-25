//
//  LJHTTPTool.m
//
//  Created by Li Jie on 14-9-17.
//  Copyright (c) 2014年 PUPBOSS. All rights reserved.
//

#import "LJHTTPTool.h"
#import "LJDeviceTool.h"
#import "AFNetworking.h"

AFHTTPSessionManager *_mgr;

@implementation LJHTTPTool

+ (void)postJSONWithURL:(NSString *)url params:(NSDictionary *)params success:(void (^)(id))success failure:(void (^)(NSError *))failure {
    
    if (!_mgr) {
        
        _mgr = [AFHTTPSessionManager manager];
    }
    
    [_mgr.requestSerializer setValue:[NSString stringWithFormat:@"%@/%@ (%@; iOS%@)", [LJDeviceTool getCurrentAppName], [LJDeviceTool getCurrentAppVersion], [LJDeviceTool getCurrentDeviceModel], [LJDeviceTool getCurrentSystemVersion]] forHTTPHeaderField:@"User-Agent"];
    
    [_mgr POST:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        if (success) {
            
            success(responseObject);
        }
        
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        if (failure) {
            
            failure(error);
        }
    }];
}

+ (void)postHTTPWithURL:(NSString *)url params:(NSDictionary *)params success:(void (^)(id))success failure:(void (^)(NSError *))failure {
    
    if (!_mgr) {
        
        _mgr = [AFHTTPSessionManager manager];
    }
    
    [_mgr.requestSerializer setValue:[NSString stringWithFormat:@"%@/%@ (%@; iOS%@)", [LJDeviceTool getCurrentAppName], [LJDeviceTool getCurrentAppVersion], [LJDeviceTool getCurrentDeviceModel], [LJDeviceTool getCurrentSystemVersion]] forHTTPHeaderField:@"User-Agent"];
    
    _mgr.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    [_mgr POST:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        if (success) {
            
            success(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        if (failure) {
            
            failure(error);
        }
    }];
}


+ (void)getJSONWithURL:(NSString *)url params:(NSDictionary *)params success:(void (^)(id))success failure:(void (^)(NSURLSessionDataTask *task, NSError *))failure {
    
    if (!_mgr) {
        
        _mgr = [AFHTTPSessionManager manager];
    }
    
    [_mgr.requestSerializer setValue:[NSString stringWithFormat:@"%@/%@ (%@; iOS%@)", [LJDeviceTool getCurrentAppName], [LJDeviceTool getCurrentAppVersion], [LJDeviceTool getCurrentDeviceModel], [LJDeviceTool getCurrentSystemVersion]] forHTTPHeaderField:@"User-Agent"];
    
    [_mgr GET:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        if (success) {
#ifdef DEBUG
            NSLog(@"%@", responseObject);
#endif
            success(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        if (failure) {
            
            failure(task, error);
        }
    }];
}

+ (void)getHTTPWithURL:(NSString *)url params:(NSDictionary *)params success:(void (^)(id))success failure:(void (^)(NSError *))failure {
    
    if (!_mgr) {
        
        _mgr = [AFHTTPSessionManager manager];
    }
    
    [_mgr.requestSerializer setValue:[NSString stringWithFormat:@"%@/%@ (%@; iOS%@)", [LJDeviceTool getCurrentAppName], [LJDeviceTool getCurrentAppVersion], [LJDeviceTool getCurrentDeviceModel], [LJDeviceTool getCurrentSystemVersion]] forHTTPHeaderField:@"User-Agent"];
    
    _mgr.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    [_mgr GET:url parameters:params progress:nil success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        if (success) {
            
            success(responseObject);
        }
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        if (failure) {
            
            failure(error);
        }
    }];
}

@end


@implementation LJFormData

@end
