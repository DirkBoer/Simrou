describe 'The JavaScript engine', ->
    it 'names the global object "window"', ->
        expect(typeof window).toBe('object')
    
    it 'provides the "location" object', ->
        expect(typeof location).toBe('object')
        expect(typeof location.hash).toBe('string')
    
    it 'allows changing location.hash', ->
        location.hash = ''
        expect(location.hash).not.toEqual('#foo')
        location.hash = 'foo'
        expect(location.hash).toEqual('#foo')
        
    it 'ignores leading hash symbols when writing to location.hash', ->
        location.hash = '#bar'
        expect(location.hash).toEqual('#bar')
    
    it 'provides the "onHashChange" event', ->
        expect('onhashchange' of window).toBe(true)


describe 'jQuery', ->
    it 'is present', ->
        expect(jQuery).toBeDefined()
        expect($).toBe(jQuery)
    
    it 'has the expected version number', ->
        expect($.fn.jquery).toBe('1.7.2')