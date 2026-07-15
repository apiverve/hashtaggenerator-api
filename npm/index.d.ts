declare module '@apiverve/hashtaggenerator' {
  export interface hashtaggeneratorOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface hashtaggeneratorResponse {
    status: string;
    error: string | null;
    data: HashtagGeneratorData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface HashtagGeneratorData {
      count:    number | null;
      hashtags: (null | string)[];
  }

  export default class hashtaggeneratorWrapper {
    constructor(options: hashtaggeneratorOptions);

    execute(callback: (error: any, data: hashtaggeneratorResponse | null) => void): Promise<hashtaggeneratorResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: hashtaggeneratorResponse | null) => void): Promise<hashtaggeneratorResponse>;
    execute(query?: Record<string, any>): Promise<hashtaggeneratorResponse>;
  }
}
